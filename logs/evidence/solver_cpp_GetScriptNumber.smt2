; Timestamp: 2026-04-18T10:14:33Z
; Constraint: (and (>= result min) (<= result max))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(and (>= result min) (<= result max))
(check-sat)
