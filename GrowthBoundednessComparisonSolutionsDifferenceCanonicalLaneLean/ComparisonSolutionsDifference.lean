import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean

structure ComparisonSolutionsDifferencePackage where
  comparisonTheorem : Prop
  solutionDifferenceBound : Prop
  growthControl : Prop
  comparisonTheoremTerm : comparisonTheorem
  solutionDifferenceBoundTerm : solutionDifferenceBound
  growthControlTerm : growthControl

structure ComparisonSolutionsDifferenceEvidence (P : ComparisonSolutionsDifferencePackage) where
  comparisonTheoremClosed : P.comparisonTheorem
  solutionDifferenceBoundClosed : P.solutionDifferenceBound
  growthControlClosed : P.growthControl

def ComparisonSolutionsDifferenceClosed (P : ComparisonSolutionsDifferencePackage) : Prop :=
  P.comparisonTheorem ∧ P.solutionDifferenceBound ∧ P.growthControl

theorem comparison_solutions_difference_closed_from_evidence
    (P : ComparisonSolutionsDifferencePackage) (E : ComparisonSolutionsDifferenceEvidence P) :
    ComparisonSolutionsDifferenceClosed P := by
  exact And.intro E.comparisonTheoremClosed
    (And.intro E.solutionDifferenceBoundClosed E.growthControlClosed)

end GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean
end HautevilleHouse