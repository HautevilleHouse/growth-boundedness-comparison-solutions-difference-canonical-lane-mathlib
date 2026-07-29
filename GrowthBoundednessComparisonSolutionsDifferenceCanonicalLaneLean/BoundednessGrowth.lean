import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean

structure BoundednessGrowthPackage where
  normType : Type u
  growthRate : Type v
  growthBound : Prop
  boundednessRegion : Prop
  growthBoundTerm : growthBound
  boundednessRegionTerm : boundednessRegion

structure BoundednessGrowthEvidence (B : BoundednessGrowthPackage) where
  growthBoundClosed : B.growthBound
  boundednessRegionClosed : B.boundednessRegion

def BoundednessGrowthClosed (B : BoundednessGrowthPackage) : Prop :=
  B.growthBound ∧ B.boundednessRegion

theorem boundedness_growth_closed_from_evidence
    (B : BoundednessGrowthPackage) (E : BoundednessGrowthEvidence B) :
    BoundednessGrowthClosed B := by
  exact And.intro E.growthBoundClosed E.boundednessRegionClosed

end GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean
end HautevilleHouse