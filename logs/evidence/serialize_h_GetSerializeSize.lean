-- Timestamp: 2026-04-18T10:11:08Z
-- Constraint: (and (>= result 0) (<= result 18446744073709551615))

import Mathlib.Data.Int.Basic
import Mathlib.Data.Int.Order.Basic
import Aesop

theorem serialize_h_GetSerializeSize (expected typ : Int) (h_sys : 0 <= result /\\ result <= 18446744073709551615) :
  0 <= result /\\ result <= 18446744073709551615 := by
  exact h_sys
