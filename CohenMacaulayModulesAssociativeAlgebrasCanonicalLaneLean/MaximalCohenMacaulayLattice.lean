import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean.CohenMacaulayModules

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

structure MaximalCohenMacaulayLattice (R : Type u) [CommRing R] where
  modules : Set (Type v) [AddCommGroup v] [Module R v]
  maximalCondition : ∀ M ∈ modules, ∃ (CM : CohenMacaulayModule R M), CM.depth = CM.krullDim

def MaxCMClosed (R : Type u) [CommRing R] (L : MaximalCohenMacaulayLattice R) : Prop :=
  ∀ M ∈ L.modules, ∃ (CM : CohenMacaulayModule R M), CM.depth = CM.krullDim

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse