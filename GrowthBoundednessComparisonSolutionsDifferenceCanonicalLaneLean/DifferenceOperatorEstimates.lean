import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean

structure DifferenceOperatorPackage where
  differenceType : Type u
  operatorNorm : Type v
  errorEstimate : Prop
  convergenceRate : Prop
  operatorNormTerm : operatorNorm
  errorEstimateTerm : errorEstimate
  convergenceRateTerm : convergenceRate

structure DifferenceOperatorEvidence (D : DifferenceOperatorPackage) where
  errorEstimateClosed : D.errorEstimate
  convergenceRateClosed : D.convergenceRate

def DifferenceOperatorClosed (D : DifferenceOperatorPackage) : Prop :=
  D.errorEstimate ∧ D.convergenceRate

theorem difference_operator_closed_from_evidence
    (D : DifferenceOperatorPackage) (E : DifferenceOperatorEvidence D) :
    DifferenceOperatorClosed D := by
  exact And.intro E.errorEstimateClosed E.convergenceRateClosed

end GrowthBoundednessComparisonSolutionsDifferenceCanonicalLaneLean
end HautevilleHouse