-- Timestamp: 2026-04-18T10:12:35Z
-- Constraint: (>= (str.len result) 156)

import Mathlib.Data.Int.Basic
import Mathlib.Data.Int.Order.Basic
import Mathlib.Tactic.Linarith

theorem util_cpp_HelpExampleRpc (expected typ : Int) (h_sys : 156 <= result.length) :
  156 <= result.length := by
  exact h_sys
