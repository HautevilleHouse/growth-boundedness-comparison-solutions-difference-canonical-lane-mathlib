import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean

structure ComparisonSolutionsPackage {G : GrowthBoundednessPackage} where
  lowerSolution : Type u
  upperSolution : Type v
  comparisonPrinciple : Prop
  stabilityUnderPerturbation : Prop

structure ComparisonSolutionsEvidence {G : GrowthBoundednessPackage}
    (C : ComparisonSolutionsPackage G) where
  comparisonPrincipleClosed : C.comparisonPrinciple
  stabilityUnderPerturbationClosed : C.stabilityUnderPerturbation

def ComparisonSolutionsClosed {G : GrowthBoundednessPackage}
    (C : ComparisonSolutionsPackage G) : Prop :=
  C.comparisonPrinciple ∧ C.stabilityUnderPerturbation

theorem comparison_solutions_closed_from_evidence {G : GrowthBoundednessPackage}
    (C : ComparisonSolutionsPackage G) (E : ComparisonSolutionsEvidence C) :
    ComparisonSolutionsClosed C := by
  exact And.intro E.comparisonPrincipleClosed E.stabilityUnderPerturbationClosed

end GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean
end HautevilleHouse