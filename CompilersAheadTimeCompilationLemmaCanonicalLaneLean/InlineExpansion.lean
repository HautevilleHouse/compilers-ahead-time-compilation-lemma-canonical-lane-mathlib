import canonicalLaneMathlib.AdmissibleClass

/-!
# Inline Expansion Package
-/

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure InlineExpansionPackage where
  callGraph : Type u
  inliningHeuristic : Prop
  correctnessProof : Prop
  heuristicTerm : inliningHeuristic
  correctnessTerm : correctnessProof

structure InlineExpansionEvidence (I : InlineExpansionPackage) where
  inliningHeuristicClosed : I.inliningHeuristic
  correctnessProofClosed : I.correctnessProof

def InlineExpansionClosed (I : InlineExpansionPackage) : Prop :=
  I.inliningHeuristic ∧ I.correctnessProof

theorem inline_expansion_closed_from_evidence (I : InlineExpansionPackage) (E : InlineExpansionEvidence I) : InlineExpansionClosed I := by
  exact And.intro E.inliningHeuristicClosed E.correctnessProofClosed

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse