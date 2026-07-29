import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean

structure GrowthBoundednessAdmittedObject where
  comparisonPackage : ComparisonSolutionsDifferencePackage
  growthPackage : GrowthControlPackage
  boundednessPackage : BoundednessComparisonPackage
  combinedEvidence : GrowthBoundednessAdmittedEvidence

structure GrowthBoundednessAdmittedEvidence where
  comparisonClosed : ComparisonSolutionsDifferenceClosed comparisonPackage
  growthClosed : GrowthControlClosed growthPackage
  boundednessClosed : BoundednessComparisonClosed boundednessPackage

def GrowthBoundednessWitnessClosed (O : GrowthBoundednessAdmittedObject) : Prop :=
  O.combinedEvidence.comparisonClosed ∧
  O.combinedEvidence.growthClosed ∧
  O.combinedEvidence.boundednessClosed

end GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean
end HautevilleHouse