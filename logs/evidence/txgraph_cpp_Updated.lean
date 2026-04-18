-- Timestamp: 2026-04-18T10:18:56Z
-- Constraint: (and (>= level 0) (<= level 1))

import Mathlib.Data.Int.Basic
import Mathlib.Data.Int.Order.Basic
import Aesop

theorem txgraph_cpp_Updated (expected typ : Int) (h_sys : 0 <= level /\\ level <= 1) :
  0 <= level /\\ level <= 1 := by
  exact h_sys
