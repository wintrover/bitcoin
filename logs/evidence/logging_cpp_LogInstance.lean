-- Timestamp: 2026-04-18T10:18:18Z
-- Constraint: (= result g_logger)

import Mathlib.Data.Int.Basic

theorem logging_cpp_LogInstance (expected typ : Int) (h_sys : result = g_logger) :
  result = g_logger := by
  exact h_sys
