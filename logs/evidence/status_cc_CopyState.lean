-- Timestamp: 2026-04-18T10:19:31Z
-- Constraint: (not (= result state))

import Mathlib.Data.Int.Basic

theorem status_cc_CopyState (expected typ : Int) (h_sys : result ≠ state) :
  result ≠ state := by
  exact h_sys
