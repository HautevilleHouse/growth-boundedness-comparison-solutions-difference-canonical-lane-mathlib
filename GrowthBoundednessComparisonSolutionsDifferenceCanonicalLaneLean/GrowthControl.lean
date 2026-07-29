import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean

structure GrowthControlPackage where
  growthBoundedness : Prop
  uniformEstimate : Prop
  decayRate : Prop
  growthBoundednessTerm : growthBoundedness
  uniformEstimateTerm : uniformEstimate
  decayRateTerm : decayRate

structure GrowthControlEvidence (G : GrowthControlPackage) where
  growthBoundednessClosed : G.growthBoundedness
  uniformEstimateClosed : G.uniformEstimate
  decayRateClosed : G.decayRate

def GrowthControlClosed (G : GrowthControlPackage) : Prop :=
  G.growthBoundedness ∧ G.uniformEstimate ∧ G.decayRate

theorem growth_control_closed_from_evidence
    (G : GrowthControlPackage) (E : GrowthControlEvidence G) :
    GrowthControlClosed G := by
  exact And.intro E.growthBoundednessClosed
    (And.intro E.uniformEstimateClosed E.decayRateClosed)

end GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean
end HautevilleHouse