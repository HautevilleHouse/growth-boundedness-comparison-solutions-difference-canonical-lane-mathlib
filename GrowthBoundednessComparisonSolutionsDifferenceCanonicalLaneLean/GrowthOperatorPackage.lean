import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean

structure GrowthOperatorPackage where
  operatorType : Type u
  domainType : Type v
  codomainType : Type w
  boundednessProp : Prop
  growthCondition : Prop
  comparisonProperty : Prop
  solutionSpace : Type x
  differenceOperator : Type y
  boundednessPropTerm : boundednessProp
  growthConditionTerm : growthCondition
  comparisonPropertyTerm : comparisonProperty

structure GrowthOperatorEvidence (G : GrowthOperatorPackage) where
  boundednessClosed : G.boundednessProp
  growthConditionClosed : G.growthCondition
  comparisonPropertyClosed : G.comparisonProperty

def GrowthOperatorClosed (G : GrowthOperatorPackage) : Prop :=
  G.boundednessProp ∧ G.growthCondition ∧ G.comparisonProperty

theorem growth_operator_closed_from_evidence
    (G : GrowthOperatorPackage) (E : GrowthOperatorEvidence G) :
    GrowthOperatorClosed G := by
  exact And.intro E.boundednessClosed (And.intro E.growthConditionClosed E.comparisonPropertyClosed)

end GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean
end HautevilleHouse