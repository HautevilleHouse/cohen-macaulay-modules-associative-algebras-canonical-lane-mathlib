import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

structure CohenMacaulayAdmittedObject where
  moduleType : Type
  algebraType : Type
  isCohenMacaulay : Prop
  conclusion : isCohenMacaulay

def CohenMacaulayWitnessClosed (O : CohenMacaulayAdmittedObject) : Prop :=
  O.isCohenMacaulay

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse
