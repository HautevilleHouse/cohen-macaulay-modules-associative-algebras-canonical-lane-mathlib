import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

structure MacAulayResolutionPackage where
  module : Type u
  ring : Type v
  resolution : Type w
  lengthFinite : Prop
  resolutionsExact : Prop
  depthCriterion : Prop

structure MacAulayResolutionEvidence (M : MacAulayResolutionPackage) where
  lengthFiniteClosed : M.lengthFinite
  resolutionsExactClosed : M.resolutionsExact
  depthCriterionClosed : M.depthCriterion

def MacAulayResolutionClosed (M : MacAulayResolutionPackage) : Prop :=
  M.lengthFinite ∧ M.resolutionsExact ∧ M.depthCriterion

theorem mac_aulay_resolution_closed_from_evidence (M : MacAulayResolutionPackage)
    (E : MacAulayResolutionEvidence M) : MacAulayResolutionClosed M := by
  exact And.intro E.lengthFiniteClosed
    (And.intro E.resolutionsExactClosed E.depthCriterionClosed)

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse