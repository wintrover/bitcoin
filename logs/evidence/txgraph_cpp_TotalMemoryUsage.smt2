; Timestamp: 2026-04-19T09:06:02Z
; Constraint: (assert (and (>= result (+ (sizeof (std::unique_ptr Cluster)) (sizeof GenericClusterImpl))) (>= result (+ (sizeof (std::unique_ptr Cluster)) (sizeof SingletonClusterImpl)))))

(set-logic QF_LIA)
(declare-const expected Int)
(declare-const typ Int)
(assert (and (>= result (+ (sizeof (std::unique_ptr Cluster)) (sizeof GenericClusterImpl))) (>= result (+ (sizeof (std::unique_ptr Cluster)) (sizeof SingletonClusterImpl)))))
(assert (not (and (>= result (+ (sizeof (std::unique_ptr Cluster)) (sizeof GenericClusterImpl))) (>= result (+ (sizeof (std::unique_ptr Cluster)) (sizeof SingletonClusterImpl))))))
(check-sat)
