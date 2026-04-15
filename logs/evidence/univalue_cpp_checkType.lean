-- Timestamp: 2026-04-15T07:50:24Z
-- Constraint: (assert (and (>= expected 0) (<= expected 5) (>= typ 0) (<= typ 5)))

import Mathlib.Data.Int.Basic
import Mathlib.Data.Int.Order.Basic

theorem univalue_cpp_checkType (expected typ : Int) (h_sys : 0 <= expected /\ expected <= 5 /\ 0 <= typ /\ typ <= 5) :
  0 <= expected /\ expected <= 5 /\ 0 <= typ /\ typ <= 5 := by
  exact h_sys
