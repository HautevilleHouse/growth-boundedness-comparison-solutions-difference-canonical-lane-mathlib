import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean

structure BoundednessComparisonPackage where
  lowerBound : Prop
  upperBound : Prop
  comparisonInequality : Prop
  lowerBoundTerm : lowerBound
  upperBoundTerm : upperBound
  comparisonInequalityTerm : comparisonInequality

structure BoundednessComparisonEvidence (B : BoundednessComparisonPackage) where
  lowerBoundClosed : B.lowerBound
  upperBoundClosed : B.upperBound
  comparisonInequalityClosed : B.comparisonInequality

def BoundednessComparisonClosed (B : BoundednessComparisonPackage) : Prop :=
  B.lowerBound ∧ B.upperBound ∧ B.comparisonInequality

theorem boundedness_comparison_closed_from_evidence
    (B : BoundednessComparisonPackage) (E : BoundednessComparisonEvidence B) :
    BoundednessComparisonClosed B := by
  exact And.intro E.lowerBoundClosed
    (And.intro E.upperBoundClosed E.comparisonInequalityClosed)

end GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean
end HautevilleHouse