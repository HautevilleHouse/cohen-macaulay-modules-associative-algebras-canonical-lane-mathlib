import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

structure CMAlgebraPackage where
  algebra : Type u
  associativeBinaryOp : algebra → algebra → algebra
  identityElement : algebra
  leftIdentity : ∀ a : algebra, associativeBinaryOp identityElement a = a
  rightIdentity : ∀ a : algebra, associativeBinaryOp a identityElement = a
  associativity : ∀ a b c : algebra, associativeBinaryOp (associativeBinaryOp a b) c = associativeBinaryOp a (associativeBinaryOp b c)

structure CMAlgebraEvidence (A : CMAlgebraPackage) where
  leftIdentityClosed : A.leftIdentity
  rightIdentityClosed : A.rightIdentity
  associativityClosed : A.associativity

def CMAlgebraClosed (A : CMAlgebraPackage) : Prop :=
  A.leftIdentity ∧ A.rightIdentity ∧ A.associativity

theorem cm_algebra_closed_from_evidence (A : CMAlgebraPackage) (E : CMAlgebraEvidence A) :
    CMAlgebraClosed A := by
  exact And.intro E.leftIdentityClosed (And.intro E.rightIdentityClosed E.associativityClosed)

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse