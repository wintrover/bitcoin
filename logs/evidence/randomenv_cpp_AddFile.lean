import Mathlib.Data.Int.Basic
import Mathlib.Data.Int.Order.Basic
import Aesop

theorem randomenv_cpp_AddFile (expected typ : Int) (f total n : Int) (h_sys : (f = -1 /\ total = 0) \/ (f >= 0 /\ -1 <= n /\ n <= 4096 /\ 0 <= total /\ total <= 1048576)) :
  (f = -1 /\ total = 0) \/ (f >= 0 /\ -1 <= n /\ n <= 4096 /\ 0 <= total /\ total <= 1048576) := by
  exact h_sys
