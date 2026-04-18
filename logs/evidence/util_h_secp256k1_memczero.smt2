; Timestamp: 2026-04-18T10:23:10Z
; Constraint: (or (= flag 0) (= flag 1))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(or (= flag 0) (= flag 1))
(check-sat)
