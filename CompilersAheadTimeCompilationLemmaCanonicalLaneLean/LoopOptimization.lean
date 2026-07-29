import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure LoopOptimizationPackage where
  loopInvariantCodeMotion : Prop
  strengthReduction : Prop
  inductionVariableAnalysis : Prop
  loopUnrollingFactors : Prop

structure LoopOptimizationEvidence (L : LoopOptimizationPackage) where
  loopInvariantCodeMotionClosed : L.loopInvariantCodeMotion
  strengthReductionClosed : L.strengthReduction
  inductionVariableAnalysisClosed : L.inductionVariableAnalysis
  loopUnrollingFactorsClosed : L.loopUnrollingFactors

def LoopOptimizationClosed (L : LoopOptimizationPackage) : Prop :=
  L.loopInvariantCodeMotion ∧ L.strengthReduction ∧ L.inductionVariableAnalysis ∧ L.loopUnrollingFactors

theorem loop_optimization_closed_from_evidence (L : LoopOptimizationPackage) (E : LoopOptimizationEvidence L) : LoopOptimizationClosed L :=
  And.intro E.loopInvariantCodeMotionClosed (And.intro E.strengthReductionClosed (And.intro E.inductionVariableAnalysisClosed E.loopUnrollingFactorsClosed))

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse