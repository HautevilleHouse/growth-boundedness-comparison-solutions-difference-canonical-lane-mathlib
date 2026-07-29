import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsDifference

structure BoundednessAnalysisPackage {G : GrowthComparisonSolutionPackage} where
  upperBoundDerived : Prop
  lowerBoundDerived : Prop
  growthRateControlled : Prop
  uniformBounds : Prop

structure BoundednessAnalysisEvidence {G : GrowthComparisonSolutionPackage}
    (B : BoundednessAnalysisPackage G) where
  upperBoundDerivedClosed : B.upperBoundDerived
  lowerBoundDerivedClosed : B.lowerBoundDerived
  growthRateControlledClosed : B.growthRateControlled
  uniformBoundsClosed : B.uniformBounds

def BoundednessAnalysisClosed {G : GrowthComparisonSolutionPackage}
    (B : BoundednessAnalysisPackage G) : Prop :=
  B.upperBoundDerived ∧ B.lowerBoundDerived ∧ B.growthRateControlled ∧ B.uniformBounds

theorem boundedness_analysis_closed_from_evidence
    {G : GrowthComparisonSolutionPackage} (B : BoundednessAnalysisPackage G)
    (E : BoundednessAnalysisEvidence B) : BoundednessAnalysisClosed B := by
  exact And.intro E.upperBoundDerivedClosed
    (And.intro E.lowerBoundDerivedClosed
      (And.intro E.growthRateControlledClosed E.uniformBoundsClosed))

end GrowthBoundednessComparisonSolutionsDifference
end HautevilleHouse
