; Timestamp: 2026-04-18T10:13:56Z
; Constraint: (and (>= result 0) (<= result 5))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(and (>= result 0) (<= result 5))
(check-sat)
