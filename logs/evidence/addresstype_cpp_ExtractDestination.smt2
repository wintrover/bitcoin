; Timestamp: 2026-04-18T10:20:11Z
; Constraint: (= result (ExtractDestination scriptPubKey addressRet))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(= result (ExtractDestination scriptPubKey addressRet))
(check-sat)
