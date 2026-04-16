; Timestamp: 2026-04-16T07:39:23Z
; Constraint: (assert (and (>= expected 0) (<= expected 5) (>= typ 0) (<= typ 5)))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(assert (and (>= expected 0) (<= expected 5) (>= typ 0) (<= typ 5)))
(assert (not (and (>= expected 0) (<= expected 5) (>= typ 0) (<= typ 5))))
(check-sat)
