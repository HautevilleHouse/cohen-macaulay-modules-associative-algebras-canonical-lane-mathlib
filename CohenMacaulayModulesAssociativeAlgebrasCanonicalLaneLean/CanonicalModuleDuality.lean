import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean.CohenMacaulayModules

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

structure CanonicalModule (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  dualizingModule : Type w
  dualityPairing : M →ₗ[R] dualizingModule →ₗ[R] R
  nonDegenerate : ∀ x : M, (∀ f : dualizingModule, dualityPairing x f = 0) → x = 0

def CanonicalDualityClosed (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] (C : CanonicalModule R M) : Prop :=
  C.nonDegenerate

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse