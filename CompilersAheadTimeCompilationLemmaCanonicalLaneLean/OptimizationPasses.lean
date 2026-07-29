import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure OptimizationPassesPackage where
  deadCodeElimination : Prop
  constantFolding : Prop
  loopInvariantCodeMotion : Prop
  inliningHeuristic : Prop
  strengthReduction : Prop

structure OptimizationPassesEvidence (O : OptimizationPassesPackage) where
  deadCodeEliminationClosed : O.deadCodeElimination
  constantFoldingClosed : O.constantFolding
  loopInvariantCodeMotionClosed : O.loopInvariantCodeMotion
  inliningHeuristicClosed : O.inliningHeuristic
  strengthReductionClosed : O.strengthReduction

def OptimizationPassesClosed (O : OptimizationPassesPackage) : Prop :=
  O.deadCodeElimination ∧ O.constantFolding ∧
  O.loopInvariantCodeMotion ∧ O.inliningHeuristic ∧ O.strengthReduction

theorem optimization_passes_closed_from_evidence (O : OptimizationPassesPackage)
    (E : OptimizationPassesEvidence O) : OptimizationPassesClosed O := by
  exact And.intro E.deadCodeEliminationClosed
    (And.intro E.constantFoldingClosed
      (And.intro E.loopInvariantCodeMotionClosed
        (And.intro E.inliningHeuristicClosed E.strengthReductionClosed)))

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse