; Timestamp: 2026-04-18T10:19:31Z
; Constraint: (not (= result state))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(not (= result state))
(check-sat)
