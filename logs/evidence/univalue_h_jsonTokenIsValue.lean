-- Timestamp: 2026-04-17T13:43:08Z
-- Constraint: (assert (<= expected 5))

import Mathlib.Data.Int.Basic
import Mathlib.Data.Int.Order.Basic

theorem univalue_h_jsonTokenIsValue (expected typ : Int) (h_sys : expected <= 5) :
  expected <= 5 := by
  exact h_sys
