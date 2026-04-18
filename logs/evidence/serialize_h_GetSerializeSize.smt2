; Timestamp: 2026-04-18T10:11:08Z
; Constraint: (and (>= result 0) (<= result 18446744073709551615))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(and (>= result 0) (<= result 18446744073709551615))
(check-sat)
