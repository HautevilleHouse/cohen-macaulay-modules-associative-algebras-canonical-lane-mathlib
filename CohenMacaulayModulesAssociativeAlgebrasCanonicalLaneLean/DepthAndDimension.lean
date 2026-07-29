import canonicalLaneMathlib.AdmissibleClass

/-!
# Depth and Krull Dimension Package
-/

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

variable (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M]

structure DepthAndDimensionPackage where
  depthComputed : ℕ
  krullDimensionComputed : ℕ
  depthBound : depthComputed ≤ krullDimensionComputed
  dimensionBound : krullDimensionComputed ≤ depthComputed
  eqCondition : depthComputed = krullDimensionComputed

structure DepthAndDimensionEvidence (D : DepthAndDimensionPackage R M) where
  depthBoundClosed : D.depthBound
  dimensionBoundClosed : D.dimensionBound
  eqConditionClosed : D.eqCondition

def DepthAndDimensionClosed (D : DepthAndDimensionPackage R M) : Prop :=
  D.depthBound ∧ D.dimensionBound ∧ D.eqCondition

theorem depth_and_dimension_closed_from_evidence
    (D : DepthAndDimensionPackage R M) (E : DepthAndDimensionEvidence D) :
    DepthAndDimensionClosed D := by
  exact And.intro E.depthBoundClosed
    (And.intro E.dimensionBoundClosed E.eqConditionClosed)

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse
