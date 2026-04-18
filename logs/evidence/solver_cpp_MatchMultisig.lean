-- Timestamp: 2026-04-18T10:20:47Z
-- Constraint: (= result (MatchMultisig script required_sigs pubkeys))

import Mathlib.Data.Int.Basic

theorem solver_cpp_MatchMultisig (expected typ : Int) (h_sys : result = MatchMultisig script required_sigs pubkeys) :
  result = MatchMultisig script required_sigs pubkeys := by
  exact h_sys
