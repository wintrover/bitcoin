; Timestamp: 2026-04-17T13:43:15Z
; Constraint: (assert (<= expected 5))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(assert (<= expected 5))
(assert (not (<= expected 5)))
(check-sat)
