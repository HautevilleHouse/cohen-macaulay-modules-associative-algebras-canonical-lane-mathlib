import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

structure GorensteinRing where
  carrier : Type u
  ringStructure : Ring carrier
  isCohenMacaulay : Prop
  canonicalModule : Module (carrier) (carrier)
  injectiveDimension : ℕ
  isGorenstein : Prop

def GorensteinClosed (R : GorensteinRing) : Prop :=
  R.isCohenMacaulay ∧ R.isGorenstein

structure GorensteinEvidence (R : GorensteinRing) where
  isCohenMacaulayClosed : R.isCohenMacaulay
  isGorensteinClosed : R.isGorenstein

theorem gorenstein_closed_from_evidence (R : GorensteinRing) (E : GorensteinEvidence R) : GorensteinClosed R := by
  exact And.intro E.isCohenMacaulayClosed E.isGorensteinClosed

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse
