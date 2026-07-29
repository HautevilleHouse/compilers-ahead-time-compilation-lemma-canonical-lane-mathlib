import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure AOTIntermediateRepresentation where
  sourceIR : Type u
  targetIR : Type v
  irMapping : sourceIR → targetIR
  preservesSemantics : Prop
  depthBound : ℕ
  depthBoundTerm : depthBound > 0

structure AOTIntermediateRepresentationEvidence (R : AOTIntermediateRepresentation) where
  preservesSemanticsClosed : R.preservesSemantics
  depthBoundPos : R.depthBound > 0

def AOTIntermediateRepresentationClosed (R : AOTIntermediateRepresentation) : Prop :=
  R.preservesSemantics ∧ R.depthBound > 0

theorem aot_intermediate_representation_closed_from_evidence
    (R : AOTIntermediateRepresentation) (E : AOTIntermediateRepresentationEvidence R) :
    AOTIntermediateRepresentationClosed R := by
  exact And.intro E.preservesSemanticsClosed E.depthBoundPos

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse