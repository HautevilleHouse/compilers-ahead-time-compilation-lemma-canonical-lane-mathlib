import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure IRWithProperties where
  irType : Type
  staticSingleAssignmentForm : Prop
  controlFlowGraph : Prop
  dominanceFrontier : Prop
  livenessAnalysis : Prop

structure IRPropertiesEvidence (I : IRWithProperties) where
  staticSingleAssignmentFormClosed : I.staticSingleAssignmentForm
  controlFlowGraphClosed : I.controlFlowGraph
  dominanceFrontierClosed : I.dominanceFrontier
  livenessAnalysisClosed : I.livenessAnalysis

def IRPropertiesClosed (I : IRWithProperties) : Prop :=
  I.staticSingleAssignmentForm ∧ I.controlFlowGraph ∧ I.dominanceFrontier ∧ I.livenessAnalysis

theorem ir_properties_closed_from_evidence (I : IRWithProperties) (E : IRPropertiesEvidence I) : IRPropertiesClosed I :=
  And.intro E.staticSingleAssignmentFormClosed (And.intro E.controlFlowGraphClosed (And.intro E.dominanceFrontierClosed E.livenessAnalysisClosed))

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse