import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

structure CohenMacaulayModule (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  finiteType : Module.Finite R M
  depth : ℕ
  krullDim : ℕ
  depthEqKrullDim : depth = krullDim

def CohenMacaulayClosed (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] (C : CohenMacaulayModule R M) : Prop :=
  C.depthEqKrullDim

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse