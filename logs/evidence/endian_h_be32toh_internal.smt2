; Timestamp: 2026-04-18T10:11:42Z
; Constraint: (and (>= result 0) (<= result 4294967295))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(and (>= result 0) (<= result 4294967295))
(check-sat)
