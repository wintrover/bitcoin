import Lake
open Lake DSL

package «axiom_evidence» {
  -- add package configuration options here
}

require mathlib from git
  "https://github.com/leanprover-community/mathlib4" @ "master"

@[default_target]
lean_lib «AxiomEvidence» {
  -- add library configuration options here
}