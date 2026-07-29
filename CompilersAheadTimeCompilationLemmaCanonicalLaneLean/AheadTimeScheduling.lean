import canonicalLaneMathlib.AdmissibleClass

/-!
# Ahead-of-Time Scheduling Package
-/

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure AheadTimeSchedulingPackage where
  targetArch : Type u
  schedulingCorrect : Prop
  resourceConstraints : Prop
  schedulingTerm : schedulingCorrect
  constraintsTerm : resourceConstraints

structure AheadTimeSchedulingEvidence (S : AheadTimeSchedulingPackage) where
  schedulingCorrectClosed : S.schedulingCorrect
  resourceConstraintsClosed : S.resourceConstraints

def AheadTimeSchedulingClosed (S : AheadTimeSchedulingPackage) : Prop :=
  S.schedulingCorrect ∧ S.resourceConstraints

theorem ahead_time_scheduling_closed_from_evidence (S : AheadTimeSchedulingPackage) (E : AheadTimeSchedulingEvidence S) : AheadTimeSchedulingClosed S := by
  exact And.intro E.schedulingCorrectClosed E.resourceConstraintsClosed

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse