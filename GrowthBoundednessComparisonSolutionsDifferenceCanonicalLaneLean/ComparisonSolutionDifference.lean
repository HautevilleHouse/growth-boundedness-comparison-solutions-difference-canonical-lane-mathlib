import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean

structure ComparisonSolutionPackage where
  referenceSolution : Type u
  comparisonSolution : Type v
  differenceFunction : Type w
  comparisonInequality : Prop
  stabilityCondition : Prop
  errorBound : Prop
  referenceSolutionTerm : referenceSolution
  comparisonSolutionTerm : comparisonSolution
  differenceFunctionTerm : differenceFunction
  comparisonInequalityTerm : comparisonInequality
  stabilityConditionTerm : stabilityCondition
  errorBoundTerm : errorBound

structure ComparisonSolutionEvidence (C : ComparisonSolutionPackage) where
  comparisonInequalityClosed : C.comparisonInequality
  stabilityConditionClosed : C.stabilityCondition
  errorBoundClosed : C.errorBound

def ComparisonSolutionClosed (C : ComparisonSolutionPackage) : Prop :=
  C.comparisonInequality ∧ C.stabilityCondition ∧ C.errorBound

theorem comparison_solution_closed_from_evidence
    (C : ComparisonSolutionPackage) (E : ComparisonSolutionEvidence C) :
    ComparisonSolutionClosed C := by
  exact And.intro E.comparisonInequalityClosed (And.intro E.stabilityConditionClosed E.errorBoundClosed)

end GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean
end HautevilleHouse