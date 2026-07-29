import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure AheadTimeAnalysisPackage where
  compileTimeConstantEvaluation : Prop
  staticBranchPrediction : Prop
  inlineExpansionDecision : Prop
  compileTimeErrorDetection : Prop

structure AheadTimeAnalysisEvidence (A : AheadTimeAnalysisPackage) where
  compileTimeConstantEvaluationClosed : A.compileTimeConstantEvaluation
  staticBranchPredictionClosed : A.staticBranchPrediction
  inlineExpansionDecisionClosed : A.inlineExpansionDecision
  compileTimeErrorDetectionClosed : A.compileTimeErrorDetection

def AheadTimeAnalysisClosed (A : AheadTimeAnalysisPackage) : Prop :=
  A.compileTimeConstantEvaluation ∧ A.staticBranchPrediction ∧
  A.inlineExpansionDecision ∧ A.compileTimeErrorDetection

theorem ahead_time_analysis_closed_from_evidence (A : AheadTimeAnalysisPackage)
    (E : AheadTimeAnalysisEvidence A) : AheadTimeAnalysisClosed A := by
  exact And.intro E.compileTimeConstantEvaluationClosed
    (And.intro E.staticBranchPredictionClosed
      (And.intro E.inlineExpansionDecisionClosed E.compileTimeErrorDetectionClosed))

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse