import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure RegisterAllocationPackage where
  registerFile : Type u
  allocationMap : Type v
  graphColoring : Prop
  spillCodeCorrectness : Prop

structure RegisterAllocationEvidence (R : RegisterAllocationPackage) where
  graphColoringClosed : R.graphColoring
  spillCodeCorrectnessClosed : R.spillCodeCorrectness

def RegisterAllocationClosed (R : RegisterAllocationPackage) : Prop :=
  R.graphColoring ∧ R.spillCodeCorrectness

theorem register_allocation_closed_from_evidence
    (R : RegisterAllocationPackage) (E : RegisterAllocationEvidence R) :
    RegisterAllocationClosed R := by
  exact And.intro E.graphColoringClosed E.spillCodeCorrectnessClosed

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse