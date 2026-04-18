-- Timestamp: 2026-04-18T10:21:38Z
-- Constraint: (= result (MatchPayToPubkeyHash script pubkeyhash))

import Mathlib.Data.Int.Basic

theorem solver_cpp_MatchPayToPubkeyHash (expected typ : Int) (h_sys : result = MatchPayToPubkeyHash script pubkeyhash) :
  result = MatchPayToPubkeyHash script pubkeyhash := by
  exact h_sys
