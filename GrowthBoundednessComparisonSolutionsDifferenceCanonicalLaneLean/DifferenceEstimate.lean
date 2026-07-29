import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GrowthBoundednessComparisonSolutionsDifference.ComparisonPrinciplePDE

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsDifference

structure DifferenceEstimatePackage {G : GrowthBoundsPackage} {H : GrowthBoundsEvidence G}
    {C : ComparisonPrinciplePackage H} where
  solutionDifference : Prop
  stabilityEstimate : Prop
  rateOfConvergence : Prop

structure DifferenceEstimateEvidence {G : GrowthBoundsPackage} {H : GrowthBoundsEvidence G}
    {C : ComparisonPrinciplePackage H} (D : DifferenceEstimatePackage C) where
  solutionDifferenceClosed : D.solutionDifference
  stabilityEstimateClosed : D.stabilityEstimate
  rateOfConvergenceClosed : D.rateOfConvergence

def DifferenceEstimateClosed {G : GrowthBoundsPackage} {H : GrowthBoundsEvidence G}
    {C : ComparisonPrinciplePackage H} (D : DifferenceEstimatePackage C) : Prop :=
  D.solutionDifference ∧ D.stabilityEstimate ∧ D.rateOfConvergence

theorem difference_estimate_closed_from_evidence {G : GrowthBoundsPackage} {H : GrowthBoundsEvidence G}
    {C : ComparisonPrinciplePackage H} (D : DifferenceEstimatePackage C)
    (E : DifferenceEstimateEvidence D) : DifferenceEstimateClosed D := by
  exact And.intro E.solutionDifferenceClosed
    (And.intro E.stabilityEstimateClosed E.rateOfConvergenceClosed)

end GrowthBoundednessComparisonSolutionsDifference
end HautevilleHouse