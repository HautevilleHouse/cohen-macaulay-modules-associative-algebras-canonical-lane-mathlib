import canonicalLaneMathlib.AdmissibleClass

/-!
# Canonical Module Package
-/

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

variable (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M]

structure CanonicalModulePackage where
  isCanonical : Prop
  dualisingModule : Type w
  dualisingPair : (dualisingModule → M) × (M → dualisingModule)
  isDualising : Prop
  canonicalRing : Type u
  canonicalMap : canonicalRing → R
  isCanonicalRing : Prop
  canonicalRingWitness : isCanonicalRing

structure CanonicalModuleEvidence (C : CanonicalModulePackage R M) where
  isCanonicalClosed : C.isCanonical
  isDualisingClosed : C.isDualising
  canonicalRingWitnessClosed : C.canonicalRingWitness

def CanonicalModuleClosed (C : CanonicalModulePackage R M) : Prop :=
  C.isCanonical ∧ C.isDualising ∧ C.isCanonicalRing

theorem canonical_module_closed_from_evidence
    (C : CanonicalModulePackage R M) (E : CanonicalModuleEvidence C) :
    CanonicalModuleClosed C := by
  exact And.intro E.isCanonicalClosed
    (And.intro E.isDualisingClosed E.canonicalRingWitnessClosed)

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse
