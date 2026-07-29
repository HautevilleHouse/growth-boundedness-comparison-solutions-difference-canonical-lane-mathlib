import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsDifference

structure GrowthBoundsPackage where
  growthBound : Prop
  boundednessCondition : Prop
  comparisonPrinciple : Prop
  solutionDifferenceBound : Prop

structure GrowthBoundsEvidence (G : GrowthBoundsPackage) where
  growthBoundClosed : G.growthBound
  boundednessConditionClosed : G.boundednessCondition
  comparisonPrincipleClosed : G.comparisonPrinciple
  solutionDifferenceBoundClosed : G.solutionDifferenceBound

def GrowthBoundsClosed (G : GrowthBoundsPackage) : Prop :=
  G.growthBound ∧ G.boundednessCondition ∧ G.comparisonPrinciple ∧ G.solutionDifferenceBound

theorem growth_bounds_closed_from_evidence (G : GrowthBoundsPackage) (E : GrowthBoundsEvidence G) :
    GrowthBoundsClosed G := by
  exact And.intro E.growthBoundClosed
    (And.intro E.boundednessConditionClosed
      (And.intro E.comparisonPrincipleClosed E.solutionDifferenceBoundClosed))

end GrowthBoundednessComparisonSolutionsDifference
end HautevilleHouse