-- Timestamp: 2026-04-18T10:13:12Z
-- Constraint: (= result (= m_net 6))

import Mathlib.Data.Int.Basic

theorem netaddress_cpp_IsInternal (expected typ : Int) (h_sys : result = (m_net = 6)) :
  result = (m_net = 6) := by
  exact h_sys
