import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

structure ExtFunctorVanishingPackage where
  module : Type u
  ring : Type v
  vanishingDegrees : List ℕ
  depthMatches : Prop
  vanishingProof : Prop

structure ExtFunctorVanishingEvidence (E : ExtFunctorVanishingPackage) where
  depthMatchesClosed : E.depthMatches
  vanishingProofClosed : E.vanishingProof

def ExtFunctorVanishingClosed (E : ExtFunctorVanishingPackage) : Prop :=
  E.depthMatches ∧ E.vanishingProof

theorem ext_functor_vanishing_closed_from_evidence (E : ExtFunctorVanishingPackage)
    (Ev : ExtFunctorVanishingEvidence E) : ExtFunctorVanishingClosed E := by
  exact And.intro Ev.depthMatchesClosed Ev.vanishingProofClosed

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse