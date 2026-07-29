import canonicalLaneMathlib.AdmissibleClass

/-!
# Cohen-Macaulay Module Package
-/

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

variable (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M]

structure CohenMacaulayModulePackage where
  isFiniteGenerated : Prop
  depth : ℕ
  krullDimension : ℕ
  depthEqDimension : depth = krullDimension
  isMaximalCM : Prop
  maximalCMWitness : isMaximalCM

structure CohenMacaulayModuleEvidence (P : CohenMacaulayModulePackage R M) where
  isFiniteGeneratedClosed : P.isFiniteGenerated
  depthEqDimensionClosed : P.depthEqDimension
  maximalCMWitnessClosed : P.maximalCMWitness

def CohenMacaulayModuleClosed (P : CohenMacaulayModulePackage R M) : Prop :=
  P.isFiniteGenerated ∧ P.depthEqDimension ∧ P.isMaximalCM

theorem cohen_macaulay_module_closed_from_evidence
    (P : CohenMacaulayModulePackage R M) (E : CohenMacaulayModuleEvidence P) :
    CohenMacaulayModuleClosed P := by
  exact And.intro E.isFiniteGeneratedClosed
    (And.intro E.depthEqDimensionClosed E.maximalCMWitnessClosed)

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse
