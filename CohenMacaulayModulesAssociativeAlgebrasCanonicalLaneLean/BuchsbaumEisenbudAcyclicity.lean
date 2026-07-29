import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean.CohenMacaulayModules

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

structure BuchsbaumEisenbudAcyclicity (R : Type u) [CommRing R] where
  resolutionLength : ℕ
  acyclicityCondition : Prop
  resolutionLengthFinite : resolutionLength < ∞

def AcyclicityClosed (R : Type u) [CommRing R] (B : BuchsbaumEisenbudAcyclicity R) : Prop :=
  B.acyclicityCondition

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse