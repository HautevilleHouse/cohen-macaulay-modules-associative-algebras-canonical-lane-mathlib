import canonicalLaneMathlib.AdmissibleClass
import CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean.CMAlgebraStructure

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

structure CMModulePackage {A : CMAlgebraPackage} where
  module : Type u
  scalarMult : A.algebra → module → module
  vectorAddition : module → module → module
  zeroElement : module
  addAssociativity : ∀ x y z : module, vectorAddition (vectorAddition x y) z = vectorAddition x (vectorAddition y z)
  addComm : ∀ x y : module, vectorAddition x y = vectorAddition y x
  zeroAdd : ∀ x : module, vectorAddition zeroElement x = x
  addZero : ∀ x : module, vectorAddition x zeroElement = x
  distribScalarAdd : ∀ a : A.algebra, ∀ x y : module, scalarMult a (vectorAddition x y) = vectorAddition (scalarMult a x) (scalarMult a y)
  distribAddScalar : ∀ a b : A.algebra, ∀ x : module, scalarMult (A.associativeBinaryOp a b) x = scalarMult a (scalarMult b x)

structure CMModuleEvidence {A : CMAlgebraPackage} (M : CMModulePackage A) where
  addAssociativityClosed : M.addAssociativity
  addCommClosed : M.addComm
  zeroAddClosed : M.zeroAdd
  addZeroClosed : M.addZero
  distribScalarAddClosed : M.distribScalarAdd
  distribAddScalarClosed : M.distribAddScalar

def CMModuleClosed {A : CMAlgebraPackage} (M : CMModulePackage A) : Prop :=
  M.addAssociativity ∧ M.addComm ∧ M.zeroAdd ∧ M.addZero ∧ M.distribScalarAdd ∧ M.distribAddScalar

theorem cm_module_closed_from_evidence {A : CMAlgebraPackage} (M : CMModulePackage A) (E : CMModuleEvidence M) :
    CMModuleClosed M := by
  exact And.intro E.addAssociativityClosed (And.intro E.addCommClosed (And.intro E.zeroAddClosed (And.intro E.addZeroClosed (And.intro E.distribScalarAddClosed E.distribAddScalarClosed))))

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse