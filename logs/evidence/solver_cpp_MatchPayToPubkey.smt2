; Timestamp: 2026-04-18T10:21:12Z
; Constraint: (= result (MatchPayToPubkey script pubkey))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(= result (MatchPayToPubkey script pubkey))
(check-sat)
