; Timestamp: 2026-04-18T10:21:38Z
; Constraint: (= result (MatchPayToPubkeyHash script pubkeyhash))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(= result (MatchPayToPubkeyHash script pubkeyhash))
(check-sat)
