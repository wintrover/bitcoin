; Timestamp: 2026-04-18T10:12:35Z
; Constraint: (>= (str.len result) 156)

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(>= (str.len result) 156)
(check-sat)
