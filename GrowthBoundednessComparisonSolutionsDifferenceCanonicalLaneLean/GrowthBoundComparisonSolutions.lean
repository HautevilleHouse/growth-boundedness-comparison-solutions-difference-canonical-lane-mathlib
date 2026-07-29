import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsDifference

structure GrowthComparisonSolutionPackage where
  boundednessCondition : Prop
  comparisonPrinciple : Prop
  maximalSolution : Prop
  minimalSolution : Prop
  uniquenessCondition : Prop

structure GrowthComparisonSolutionEvidence (G : GrowthComparisonSolutionPackage) where
  boundednessConditionClosed : G.boundednessCondition
  comparisonPrincipleClosed : G.comparisonPrinciple
  maximalSolutionClosed : G.maximalSolution
  minimalSolutionClosed : G.minimalSolution
  uniquenessConditionClosed : G.uniquenessCondition

def GrowthComparisonSolutionClosed (G : GrowthComparisonSolutionPackage) : Prop :=
  G.boundednessCondition ∧ G.comparisonPrinciple ∧ G.maximalSolution ∧ G.minimalSolution ∧ G.uniquenessCondition

theorem growth_comparison_solution_closed_from_evidence
    (G : GrowthComparisonSolutionPackage) (E : GrowthComparisonSolutionEvidence G) :
    GrowthComparisonSolutionClosed G := by
  exact And.intro E.boundednessConditionClosed
    (And.intro E.comparisonPrincipleClosed
      (And.intro E.maximalSolutionClosed
        (And.intro E.minimalSolutionClosed E.uniquenessConditionClosed)))

end GrowthBoundednessComparisonSolutionsDifference
end HautevilleHouse
