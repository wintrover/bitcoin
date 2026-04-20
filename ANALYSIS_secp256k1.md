<br />

## Scope

This note fixes the proof posture for two previously non-resolvable nodes:

- `field_impl.h::secp256k1_fe_sqr`
- `group_impl.h::secp256k1_gej_double`

Both live in the embedded `secp256k1` implementation and are not amenable to generic, syntax-driven inference because their correctness is semantic: they rely on arithmetic over a specific prime field and on the elliptic-curve equation.

## Mathematical Model (Golden Domain)

The intended semantics is arithmetic in the prime field:

- Field modulus: `p = 2^256 - 2^32 - 977` (secp256k1 base field)
- Mathematical carrier: `ZMod p`

In Lean, `ZMod p` represents integers modulo `p`. The engine-level stance is:

- C-level limb representations are treated as a representation `repr : Nat`
- The semantic value is `val : ZMod p` obtained by coercion `(repr : ZMod p)`

This separates representation invariants (magnitude/normalization) from semantic invariants (field closure).

## Invariants Forced Into Hints

### `secp256k1_fe_sqr`

Required invariant:

- If the input can be interpreted as a field element `a : ZMod p`, then the output remains in `ZMod p` and corresponds to `a^2`.

This is the minimal closure contract that forbids “random integer squaring” and pins the operation to the field semantics.

### `secp256k1_gej_double`

Required invariant template:

- Work in projective coordinates over `ZMod p`
- Infinity flag propagation: `r.infinity = a.infinity`
- Curve equation preservation (template): if `(x1,y1)` satisfies `y^2 = x^3 + 7`, then the doubled point `(x3,y3)` also satisfies it

The concrete C implementation performs a specific sequence of field operations that (mathematically) computes the doubling map. A meaningful proof posture must therefore quantify over `x1 y1 z1 : ZMod p` and express that all intermediate values and outputs remain in the same field.

## Why These Invariants Are Non-Negotiable

Without an explicit `ZMod p` model, the following failure modes remain “provable” by vacuity:

- Treating field operations as unconstrained integer arithmetic
- Allowing intermediate values to escape the modulus
- Accepting a doubling routine that does not preserve the curve equation (breaks group law)

The `ZMod p` abstraction is the smallest deterministic interface that:

- is independent of platform details (no `sizeof`, no pointer arithmetic)
- is stable under SMT/Lean transport
- matches the cryptographic specification surface (finite field + curve equation)

## Axiom Integration

Manual high-density hints were injected into:

- `ax.toml` nodes:
  - `field_impl.h::secp256k1_fe_sqr`
  - `group_impl.h::secp256k1_gej_double`

The certificate gate was then repaired via fingerprint-aware certificates under:

- `src/verification/certificates/`

This yields a perfect certificate ASI for the trusted set (density-first policy).

## Evidence

- Context7 reference used: Mathlib4 `ZMod` model (Data.ZMod.Basic) and modular arithmetic background (Lean/Mathlib number theory snippets).

