-- Timestamp: 2026-04-18T10:17:01Z
-- Constraint: (= result (and (>= opcode 81) (<= opcode 96)))

import Mathlib.Data.Int.Basic
import Mathlib.Data.Int.Order.Basic
import Aesop

theorem solver_cpp_IsSmallInteger (expected typ : Int) (h_sys : result = (81 <= opcode /\\ opcode <= 96)) :
  result = (81 <= opcode /\\ opcode <= 96) := by
  exact h_sys
