import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean.CohenMacaulayModules

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

structure AuslanderBuchsbaumFormula (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  projectiveDimension : ℕ
  depth : ℕ
  formulaHolds : projectiveDimension + depth = Module.finiteType.dim R M

def AuslanderBuchsbaumClosed (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] (A : AuslanderBuchsbaumFormula R M) : Prop :=
  A.formulaHolds

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse