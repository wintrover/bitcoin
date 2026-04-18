-- Timestamp: 2026-04-18T10:15:37Z
-- Constraint: (= result (make_shared txIn))

import Mathlib.Data.Int.Basic

theorem transaction_h_MakeTransactionRef (expected typ : Int) (h_sys : result = make_shared txIn) :
  result = make_shared txIn := by
  exact h_sys
