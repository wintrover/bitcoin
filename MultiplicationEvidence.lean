namespace MultiplicationEvidence

def limbs_to_nat : List Nat → Nat
| [] => 0
| x :: xs => x + (2 ^ 64) * limbs_to_nat xs

def secp256k1_p : Nat := (2 ^ 256) - (2 ^ 32) - 977

def secp256k1_fe_mul (a b : List Nat) : Nat :=
  (limbs_to_nat a * limbs_to_nat b) % secp256k1_p

theorem secp256k1_fe_mul_agrees_with_limbs_to_nat (a b : List Nat) :
    secp256k1_fe_mul a b = (limbs_to_nat a * limbs_to_nat b) % secp256k1_p := by
  rfl

theorem secp256k1_fe_mul_comm (a b : List Nat) :
    secp256k1_fe_mul a b = secp256k1_fe_mul b a := by
  simp [secp256k1_fe_mul, Nat.mul_comm]

#check secp256k1_fe_mul_comm

end MultiplicationEvidence
