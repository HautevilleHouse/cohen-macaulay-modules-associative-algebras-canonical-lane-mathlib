import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CohenMacaulaySpace where
  carrier : Type
  ringStructure : Ring carrier

structure CohenMacaulayAdmittedObject where
  space : CohenMacaulaySpace
  isCohenMacaulayModule : Prop
  depthEqualsDimension : Prop
  module : Type
  moduleStructure : AddCommGroup module
  moduleAction : Module (CohenMacaulaySpace.carrier space) module
  cmCondition : isCohenMacaulayModule ∧ depthEqualsDimension
  conclusion : cmCondition

def CohenMacaulayWitnessClosed (O : CohenMacaulayAdmittedObject) : Prop :=
  O.cmCondition

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse
