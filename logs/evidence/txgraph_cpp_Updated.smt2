; Timestamp: 2026-04-18T10:18:56Z
; Constraint: (and (>= level 0) (<= level 1))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(and (>= level 0) (<= level 1))
(check-sat)
