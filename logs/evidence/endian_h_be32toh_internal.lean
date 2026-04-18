-- Timestamp: 2026-04-18T10:11:42Z
-- Constraint: (and (>= result 0) (<= result 4294967295))

import Mathlib.Data.Int.Basic
import Mathlib.Data.Int.Order.Basic
import Aesop

theorem endian_h_be32toh_internal (expected typ : Int) (h_sys : 0 <= result /\\ result <= 4294967295) :
  0 <= result /\\ result <= 4294967295 := by
  exact h_sys
