import canonicalLaneMathlib.AdmissibleClass

/-!
# Gorenstein Ring Package
-/

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

variable (R : Type u) [CommRing R]

structure GorensteinRingPackage where
  isCohenMacaulay : Prop
  canonicalModuleInjective : Prop
  injectiveDimensionFinite : Prop
  gorensteinCondition : isCohenMacaulay ∧ canonicalModuleInjective ∧ injectiveDimensionFinite
  gorensteinWitness : gorensteinCondition

structure GorensteinRingEvidence (G : GorensteinRingPackage R) where
  isCohenMacaulayClosed : G.isCohenMacaulay
  canonicalModuleInjectiveClosed : G.canonicalModuleInjective
  injectiveDimensionFiniteClosed : G.injectiveDimensionFinite
  gorensteinWitnessClosed : G.gorensteinWitness

def GorensteinRingClosed (G : GorensteinRingPackage R) : Prop :=
  G.isCohenMacaulay ∧ G.canonicalModuleInjective ∧ G.injectiveDimensionFinite ∧ G.gorensteinCondition

theorem gorenstein_ring_closed_from_evidence
    (G : GorensteinRingPackage R) (E : GorensteinRingEvidence G) :
    GorensteinRingClosed G := by
  have h : G.gorensteinCondition := E.gorensteinWitnessClosed
  exact And.intro E.isCohenMacaulayClosed
    (And.intro E.canonicalModuleInjectiveClosed
      (And.intro E.injectiveDimensionFiniteClosed h))

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse
