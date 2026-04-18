-- Timestamp: 2026-04-18T10:21:12Z
-- Constraint: (= result (MatchPayToPubkey script pubkey))

import Mathlib.Data.Int.Basic

theorem solver_cpp_MatchPayToPubkey (expected typ : Int) (h_sys : result = MatchPayToPubkey script pubkey) :
  result = MatchPayToPubkey script pubkey := by
  exact h_sys
