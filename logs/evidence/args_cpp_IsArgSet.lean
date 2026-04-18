-- Timestamp: 2026-04-18T10:17:37Z
-- Constraint: (= result (not (isNull (GetSetting strArg))))

import Mathlib.Data.Int.Basic

theorem args_cpp_IsArgSet (expected typ : Int) (h_sys : result = (not (isNull (GetSetting strArg)))) :
  result = (not (isNull (GetSetting strArg))) := by
  exact h_sys
