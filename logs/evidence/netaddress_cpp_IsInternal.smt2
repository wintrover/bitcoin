; Timestamp: 2026-04-18T10:13:12Z
; Constraint: (= result (= m_net 6))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(= result (= m_net 6))
(check-sat)
