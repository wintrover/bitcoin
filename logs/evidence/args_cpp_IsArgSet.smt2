; Timestamp: 2026-04-18T10:17:37Z
; Constraint: (= result (not (isNull (GetSetting strArg))))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(= result (not (isNull (GetSetting strArg))))
(check-sat)
