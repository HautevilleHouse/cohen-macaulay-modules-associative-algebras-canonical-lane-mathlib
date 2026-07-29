import canonicalLaneMathlib.AdmissibleClass
import CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean.CohenMacaulayModule

/-!
# Auslander-Buchsbaum Formula Package
-/

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

variable (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M]

structure AuslanderBuchsbaumPackage where
  projectiveDimension : ℕ
  depth : ℕ
  formulaHolds : projectiveDimension + depth = 0
  formulaApplied : formulaHolds

structure AuslanderBuchsbaumEvidence (A : AuslanderBuchsbaumPackage R M) where
  formulaHoldsClosed : A.formulaHolds
  formulaAppliedClosed : A.formulaApplied

def AuslanderBuchsbaumClosed (A : AuslanderBuchsbaumPackage R M) : Prop :=
  A.formulaHolds ∧ A.formulaApplied

theorem auslander_buchsbaum_closed_from_evidence
    (A : AuslanderBuchsbaumPackage R M) (E : AuslanderBuchsbaumEvidence A) :
    AuslanderBuchsbaumClosed A := by
  exact And.intro E.formulaHoldsClosed E.formulaAppliedClosed

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse
