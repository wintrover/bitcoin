-- Timestamp: 2026-04-18T10:13:56Z
-- Constraint: (and (>= result 0) (<= result 5))

import Mathlib.Data.Int.Basic
import Mathlib.Data.Int.Order.Basic
import Aesop

theorem status_h_Status (expected typ : Int) (h_sys : 0 <= result /\\ result <= 5) :
  0 <= result /\\ result <= 5 := by
  exact h_sys
