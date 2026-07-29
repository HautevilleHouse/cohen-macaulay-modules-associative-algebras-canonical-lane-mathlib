import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

def ConstrainedCohenMacaulayClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cohen_macaulay_endgame (A : AdmissibleClass) :
    ConstrainedCohenMacaulayClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse
