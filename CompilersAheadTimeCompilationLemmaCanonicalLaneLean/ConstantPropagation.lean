import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure ConstantPropagationPackage where
  lattice : Type u
  analysis : Type v
  soundness : Prop
  fixpointConvergence : Prop

structure ConstantPropagationEvidence (C : ConstantPropagationPackage) where
  soundnessClosed : C.soundness
  fixpointConvergenceClosed : C.fixpointConvergence

def ConstantPropagationClosed (C : ConstantPropagationPackage) : Prop :=
  C.soundness ∧ C.fixpointConvergence

theorem constant_propagation_closed_from_evidence
    (C : ConstantPropagationPackage) (E : ConstantPropagationEvidence C) :
    ConstantPropagationClosed C := by
  exact And.intro E.soundnessClosed E.fixpointConvergenceClosed

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse