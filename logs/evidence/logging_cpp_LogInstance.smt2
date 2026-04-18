; Timestamp: 2026-04-18T10:18:18Z
; Constraint: (= result g_logger)

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(= result g_logger)
(check-sat)
