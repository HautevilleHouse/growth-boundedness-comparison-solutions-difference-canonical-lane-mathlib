import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GrowthBoundednessComparisonSolutionsDifference.GrowthBoundsStatement

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsDifference

structure BoundednessConditionPackage {G : GrowthBoundsPackage} (H : GrowthBoundsEvidence G) where
  uniformBound : Prop
  pointwiseBound : Prop
  integrabilityCondition : Prop

structure BoundednessConditionEvidence {G : GrowthBoundsPackage} {H : GrowthBoundsEvidence G}
    (B : BoundednessConditionPackage H) where
  uniformBoundClosed : B.uniformBound
  pointwiseBoundClosed : B.pointwiseBound
  integrabilityConditionClosed : B.integrabilityCondition

def BoundednessConditionClosed {G : GrowthBoundsPackage} {H : GrowthBoundsEvidence G}
    (B : BoundednessConditionPackage H) : Prop :=
  B.uniformBound ∧ B.pointwiseBound ∧ B.integrabilityCondition

theorem boundedness_condition_closed_from_evidence {G : GrowthBoundsPackage} {H : GrowthBoundsEvidence G}
    (B : BoundednessConditionPackage H) (E : BoundednessConditionEvidence B) :
    BoundednessConditionClosed B := by
  exact And.intro E.uniformBoundClosed
    (And.intro E.pointwiseBoundClosed E.integrabilityConditionClosed)

end GrowthBoundednessComparisonSolutionsDifference
end HautevilleHouse