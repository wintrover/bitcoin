-- Timestamp: 2026-04-15T13:58:36Z
-- Constraint: (assert (<= expected 5))

import Mathlib.Data.Int.Basic
import Mathlib.Data.Int.Order.Basic

theorem univalue_h_json_isspace (expected typ : Int) (h_sys : expected <= 5) :
  expected <= 5 := by
  exact h_sys
