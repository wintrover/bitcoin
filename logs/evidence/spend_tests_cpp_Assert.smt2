; Timestamp: 2026-04-18T03:13:34Z
; Constraint: (assert true)

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(assert true)
(assert (not true))
(check-sat)
