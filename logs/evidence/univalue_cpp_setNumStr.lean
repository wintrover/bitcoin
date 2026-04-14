-- Timestamp: 2026-04-14T13:36:06Z
-- Constraint: (assert (and (>= expected 0) (<= expected 5) (>= typ 0) (<= typ 5)))

import Mathlib.Data.Int.Basic
import Aesop
import Mathlib.Data.Int.Order.Basic

theorem univalue_cpp_setNumStr :
  forall (expected typ : Int), expected ≥ 0 ∧ expected ≤ 5 ∧ typ ≥ 0 ∧ typ ≤ 5 := by
  intros
  aesop
