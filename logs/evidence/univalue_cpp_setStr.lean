-- Timestamp: 2026-04-18T02:28:46Z
-- Constraint: (assert (and (>= expected 0) (<= expected 5) (>= typ 0) (<= typ 5)))

import Mathlib.Data.Int.Basic
import Mathlib.Data.Int.Order.Basic
import Aesop

theorem univalue_cpp_setStr (expected typ : Int) (h_sys : (expected >= 0) ∧ (expected <= 5) ∧ (typ >= 0) ∧ (typ <= 5)) :
  (expected >= 0) ∧ (expected <= 5) ∧ (typ >= 0) ∧ (typ <= 5) := by
  exact h_sys
