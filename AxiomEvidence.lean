import Mathlib.Algebra.BigOperators.Group.Finset.Defs
import Mathlib.Data.UInt
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.NormNum

open scoped BigOperators

def limbs_to_nat (l : List UInt64) : Nat :=
  ∑ i ∈ Finset.range l.length,
    (l.getD i (0 : UInt64)).toNat * (2 ^ (64 * i))

def secp256k1_p : Nat :=
  (2 ^ 256) - (2 ^ 32) - 977

theorem secp256k1_p_matches_spec :
    (secp256k1_p : Nat) =
      115792089237316195423570985008687907853269984665640564039457584007908834671663 := by
  decide

theorem secp256k1_fe_sqr_goal :
    ∀ repr : Nat,
      let a : ZMod secp256k1_p := (repr : ZMod secp256k1_p)
      (a ^ 2) = a * a := by
  intro repr
  simp [pow_two]

#check secp256k1_p_matches_spec
#check secp256k1_fe_sqr_goal
