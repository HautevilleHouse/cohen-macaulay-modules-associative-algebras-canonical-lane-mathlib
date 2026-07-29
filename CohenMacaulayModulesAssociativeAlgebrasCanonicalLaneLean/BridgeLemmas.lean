import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CohenMacaulayWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CohenMacaulayModulesAssociativeAlgebrasCanonicalLaneLean
end HautevilleHouse
