; Timestamp: 2026-04-18T10:15:37Z
; Constraint: (= result (make_shared txIn))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(= result (make_shared txIn))
(check-sat)
