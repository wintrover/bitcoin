; Timestamp: 2026-04-19T08:52:23Z
; Constraint: (assert (and (or (= f -1) (>= f 0)) (>= n -1) (<= n 4096) (>= total 0) (<= total 1048576)))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(assert (and (or (= f -1) (>= f 0)) (>= n -1) (<= n 4096) (>= total 0) (<= total 1048576)))
(assert (not (and (or (= f -1) (>= f 0)) (>= n -1) (<= n 4096) (>= total 0) (<= total 1048576))))
(check-sat)
