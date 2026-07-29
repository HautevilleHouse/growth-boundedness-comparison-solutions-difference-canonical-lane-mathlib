import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean

structure SolutionDifferenceEstimatePackage where
  initialConditionControl : Prop
  stabilityEstimate : Prop
  convergenceRate : Prop
  errorPropagation : Prop

def SolutionDifferenceEstimateClosed (S : SolutionDifferenceEstimatePackage) : Prop :=
  S.initialConditionControl ∧ S.stabilityEstimate ∧ S.convergenceRate ∧ S.errorPropagation

end GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean
end HautevilleHouse
