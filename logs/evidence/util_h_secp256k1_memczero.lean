-- Timestamp: 2026-04-18T10:23:10Z
-- Constraint: (or (= flag 0) (= flag 1))

import Mathlib.Data.Int.Basic
import Aesop

theorem util_h_secp256k1_memczero (expected typ : Int) (h_sys : flag = 0 \\/ flag = 1) :
  flag = 0 \\/ flag = 1 := by
  exact h_sys
