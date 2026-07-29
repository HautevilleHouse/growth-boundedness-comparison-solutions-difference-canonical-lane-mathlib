import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GrowthBoundednessComparisonSolutionsDifference.GrowthBoundsStatement

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsDifference

structure ComparisonPrinciplePackage {G : GrowthBoundsPackage} (H : GrowthBoundsEvidence G) where
  barrierConstruction : Prop
  comparisonInequality : Prop
  uniquenessFromComparison : Prop

structure ComparisonPrincipleEvidence {G : GrowthBoundsPackage} {H : GrowthBoundsEvidence G}
    (C : ComparisonPrinciplePackage H) where
  barrierConstructionClosed : C.barrierConstruction
  comparisonInequalityClosed : C.comparisonInequality
  uniquenessFromComparisonClosed : C.uniquenessFromComparison

def ComparisonPrincipleClosed {G : GrowthBoundsPackage} {H : GrowthBoundsEvidence G}
    (C : ComparisonPrinciplePackage H) : Prop :=
  C.barrierConstruction ∧ C.comparisonInequality ∧ C.uniquenessFromComparison

theorem comparison_principle_closed_from_evidence {G : GrowthBoundsPackage} {H : GrowthBoundsEvidence G}
    (C : ComparisonPrinciplePackage H) (E : ComparisonPrincipleEvidence C) :
    ComparisonPrincipleClosed C := by
  exact And.intro E.barrierConstructionClosed
    (And.intro E.comparisonInequalityClosed E.uniquenessFromComparisonClosed)

end GrowthBoundednessComparisonSolutionsDifference
end HautevilleHouse