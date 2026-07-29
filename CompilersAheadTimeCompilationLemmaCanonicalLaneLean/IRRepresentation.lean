import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure IRRepresentationPackage where
  language : Type u
  syntax : Type v
  semantics : Type w
  typedRepresentation : Prop
  staticSingleAssignmentForm : Prop
  controlFlowGraph : Prop
  typeInformationPreserved : Prop

structure IRRepresentationEvidence (I : IRRepresentationPackage) where
  typedRepresentationClosed : I.typedRepresentation
  staticSingleAssignmentFormClosed : I.staticSingleAssignmentForm
  controlFlowGraphClosed : I.controlFlowGraph
  typeInformationPreservedClosed : I.typeInformationPreserved

def IRRepresentationClosed (I : IRRepresentationPackage) : Prop :=
  I.typedRepresentation ∧ I.staticSingleAssignmentForm ∧
  I.controlFlowGraph ∧ I.typeInformationPreserved

theorem ir_representation_closed_from_evidence (I : IRRepresentationPackage)
    (E : IRRepresentationEvidence I) : IRRepresentationClosed I := by
  exact And.intro E.typedRepresentationClosed
    (And.intro E.staticSingleAssignmentFormClosed
      (And.intro E.controlFlowGraphClosed E.typeInformationPreservedClosed))

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse