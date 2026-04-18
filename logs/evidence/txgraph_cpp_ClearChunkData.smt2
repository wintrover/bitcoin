; Timestamp: 2026-04-18T10:22:18Z
; Constraint: (not (= this entry))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(not (= this entry))
(check-sat)
