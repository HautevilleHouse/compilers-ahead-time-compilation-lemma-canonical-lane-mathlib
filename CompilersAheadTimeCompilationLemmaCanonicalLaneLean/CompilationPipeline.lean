import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure CompilationPipelinePackage where
  frontendParsing : Prop
  semanticAnalysis : Prop
  irLowering : Prop
  optimizationPhases : OptimizationPassesPackage
  codeGeneration : CodeGenerationPackage
  aheadTimeAnalysis : AheadTimeAnalysisPackage

structure CompilationPipelineEvidence (P : CompilationPipelinePackage) where
  frontendParsingClosed : P.frontendParsing
  semanticAnalysisClosed : P.semanticAnalysis
  irLoweringClosed : P.irLowering
  optimizationPhasesEvidence : OptimizationPassesEvidence P.optimizationPhases
  codeGenerationEvidence : CodeGenerationEvidence P.codeGeneration
  aheadTimeAnalysisEvidence : AheadTimeAnalysisEvidence P.aheadTimeAnalysis

def CompilationPipelineClosed (P : CompilationPipelinePackage) : Prop :=
  P.frontendParsing ∧ P.semanticAnalysis ∧ P.irLowering ∧
  OptimizationPassesClosed P.optimizationPhases ∧
  CodeGenerationClosed P.codeGeneration ∧
  AheadTimeAnalysisClosed P.aheadTimeAnalysis

theorem compilation_pipeline_closed_from_evidence (P : CompilationPipelinePackage)
    (E : CompilationPipelineEvidence P) : CompilationPipelineClosed P := by
  exact And.intro E.frontendParsingClosed
    (And.intro E.semanticAnalysisClosed
      (And.intro E.irLoweringClosed
        (And.intro (optimization_passes_closed_from_evidence P.optimizationPhases E.optimizationPhasesEvidence)
          (And.intro (code_generation_closed_from_evidence P.codeGeneration E.codeGenerationEvidence)
            (ahead_time_analysis_closed_from_evidence P.aheadTimeAnalysis E.aheadTimeAnalysisEvidence)))))

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse