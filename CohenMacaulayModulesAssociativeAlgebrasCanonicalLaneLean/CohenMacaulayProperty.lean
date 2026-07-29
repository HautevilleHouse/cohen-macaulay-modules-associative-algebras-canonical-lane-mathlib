import canonicalLaneMathlib.AdmissibleClass
import CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean.CMModuleStructure

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

structure CMPropertyPackage {A : CMAlgebraPackage} {M : CMModulePackage A} where
  depth : ℕ
  krullDimension : ℕ
  depthEqualsKrullDim : Prop
  depthMeasure : Prop
  krullDimMeasure : Prop
  cohenMacaulayCondition : depth = krullDimension

structure CMPropertyEvidence {A : CMAlgebraPackage} {M : CMModulePackage A} (C : CMPropertyPackage A M) where
  depthClosed : C.depthMeasure
  krullDimClosed : C.krullDimMeasure
  conditionClosed : C.cohenMacaulayCondition

def CMPropertyClosed {A : CMAlgebraPackage} {M : CMModulePackage A} (C : CMPropertyPackage A M) : Prop :=
  C.depthMeasure ∧ C.krullDimMeasure ∧ C.cohenMacaulayCondition

theorem cm_property_closed_from_evidence {A : CMAlgebraPackage} {M : CMModulePackage A} (C : CMPropertyPackage A M) (E : CMPropertyEvidence C) :
    CMPropertyClosed C := by
  exact And.intro E.depthClosed (And.intro E.krullDimClosed E.conditionClosed)

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse