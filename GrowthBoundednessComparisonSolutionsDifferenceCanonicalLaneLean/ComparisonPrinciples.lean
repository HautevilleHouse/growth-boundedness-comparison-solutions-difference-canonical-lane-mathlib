import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsDifference

structure ComparisonPrinciplesPackage {G : GrowthComparisonSolutionPackage} where
  subSolutionComparison : Prop
  superSolutionComparison : Prop
  orderingPreserved : Prop
  stabilityUnderLimits : Prop

structure ComparisonPrinciplesEvidence {G : GrowthComparisonSolutionPackage}
    (C : ComparisonPrinciplesPackage G) where
  subSolutionComparisonClosed : C.subSolutionComparison
  superSolutionComparisonClosed : C.superSolutionComparison
  orderingPreservedClosed : C.orderingPreserved
  stabilityUnderLimitsClosed : C.stabilityUnderLimits

def ComparisonPrinciplesClosed {G : GrowthComparisonSolutionPackage}
    (C : ComparisonPrinciplesPackage G) : Prop :=
  C.subSolutionComparison ∧ C.superSolutionComparison ∧ C.orderingPreserved ∧ C.stabilityUnderLimits

theorem comparison_principles_closed_from_evidence
    {G : GrowthComparisonSolutionPackage} (C : ComparisonPrinciplesPackage G)
    (E : ComparisonPrinciplesEvidence C) : ComparisonPrinciplesClosed C := by
  exact And.intro E.subSolutionComparisonClosed
    (And.intro E.superSolutionComparisonClosed
      (And.intro E.orderingPreservedClosed E.stabilityUnderLimitsClosed))

end GrowthBoundednessComparisonSolutionsDifference
end HautevilleHouse
