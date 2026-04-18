-- Timestamp: 2026-04-18T10:14:33Z
-- Constraint: (and (>= result min) (<= result max))

import Mathlib.Data.Int.Basic
import Mathlib.Data.Int.Order.Basic
import Aesop

theorem solver_cpp_GetScriptNumber (expected typ : Int) (h_sys : min <= result /\\ result <= max) :
  min <= result /\\ result <= max := by
  exact h_sys
