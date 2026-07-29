import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean

structure DifferenceEstimatesPackage {G : GrowthBoundednessPackage}
    {C : ComparisonSolutionsPackage G} where
  differenceBound : Prop
  errorEstimate : Prop
  rateOfConvergence : Prop

structure DifferenceEstimatesEvidence {G : GrowthBoundednessPackage}
    {C : ComparisonSolutionsPackage G} (D : DifferenceEstimatesPackage G C) where
  differenceBoundClosed : D.differenceBound
  errorEstimateClosed : D.errorEstimate
  rateOfConvergenceClosed : D.rateOfConvergence

def DifferenceEstimatesClosed {G : GrowthBoundednessPackage}
    {C : ComparisonSolutionsPackage G} (D : DifferenceEstimatesPackage G C) : Prop :=
  D.differenceBound ∧ D.errorEstimate ∧ D.rateOfConvergence

theorem difference_estimates_closed_from_evidence {G : GrowthBoundednessPackage}
    {C : ComparisonSolutionsPackage G} (D : DifferenceEstimatesPackage G C)
    (E : DifferenceEstimatesEvidence D) : DifferenceEstimatesClosed D := by
  exact And.intro E.differenceBoundClosed
    (And.intro E.errorEstimateClosed E.rateOfConvergenceClosed)

end GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean
end HautevilleHouse