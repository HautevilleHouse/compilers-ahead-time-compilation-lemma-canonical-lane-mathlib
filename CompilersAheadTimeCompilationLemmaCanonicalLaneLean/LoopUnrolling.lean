import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure LoopUnrollingPackage where
  unrollFactor : ℕ
  unrollStrategy : Type u
  preservesLoopSemantics : Prop
  resourceBoundImproved : Prop

structure LoopUnrollingEvidence (L : LoopUnrollingPackage) where
  preservesLoopSemanticsClosed : L.preservesLoopSemantics
  resourceBoundImprovedClosed : L.resourceBoundImproved

def LoopUnrollingClosed (L : LoopUnrollingPackage) : Prop :=
  L.preservesLoopSemantics ∧ L.resourceBoundImproved

theorem loop_unrolling_closed_from_evidence
    (L : LoopUnrollingPackage) (E : LoopUnrollingEvidence L) :
    LoopUnrollingClosed L := by
  exact And.intro E.preservesLoopSemanticsClosed E.resourceBoundImprovedClosed

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse