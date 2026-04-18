; Timestamp: 2026-04-18T10:20:47Z
; Constraint: (= result (MatchMultisig script required_sigs pubkeys))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(= result (MatchMultisig script required_sigs pubkeys))
(check-sat)
