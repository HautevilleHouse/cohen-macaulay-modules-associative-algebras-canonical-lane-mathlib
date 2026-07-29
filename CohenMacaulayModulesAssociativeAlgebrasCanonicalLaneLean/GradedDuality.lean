import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

structure GradedDualityPackage where
  module : Type u
  ring : Type v
  dualModule : Type w
  canonicalModule : Type z
  dualityIsomorphism : Prop
  canonicalModuleExists : Prop

structure GradedDualityEvidence (G : GradedDualityPackage) where
  dualityIsomorphismClosed : G.dualityIsomorphism
  canonicalModuleExistsClosed : G.canonicalModuleExists

def GradedDualityClosed (G : GradedDualityPackage) : Prop :=
  G.dualityIsomorphism ∧ G.canonicalModuleExists

theorem graded_duality_closed_from_evidence (G : GradedDualityPackage)
    (Ev : GradedDualityEvidence G) : GradedDualityClosed G := by
  exact And.intro Ev.dualityIsomorphismClosed Ev.canonicalModuleExistsClosed

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse