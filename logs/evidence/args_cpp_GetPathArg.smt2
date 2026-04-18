; Timestamp: 2026-04-18T10:16:19Z
; Constraint: (= result (GetPathArg_ arg default_value))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(= result (GetPathArg_ arg default_value))
(check-sat)
