; Timestamp: 2026-04-18T10:17:01Z
; Constraint: (= result (and (>= opcode 81) (<= opcode 96)))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(= result (and (>= opcode 81) (<= opcode 96)))
(check-sat)
