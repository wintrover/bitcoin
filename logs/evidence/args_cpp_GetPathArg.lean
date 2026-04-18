-- Timestamp: 2026-04-18T10:16:19Z
-- Constraint: (= result (GetPathArg_ arg default_value))

import Mathlib.Data.Int.Basic

theorem args_cpp_GetPathArg (expected typ : Int) (h_sys : result = GetPathArg_ arg default_value) :
  result = GetPathArg_ arg default_value := by
  exact h_sys
