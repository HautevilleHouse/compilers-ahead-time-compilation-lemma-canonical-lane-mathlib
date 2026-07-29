import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure CodeGenerationPackage where
  targetArchitecture : Type u
  instructionSelection : Prop
  registerAllocation : Prop
  instructionScheduling : Prop
  machineCodeEmitted : Prop

structure CodeGenerationEvidence (C : CodeGenerationPackage) where
  instructionSelectionClosed : C.instructionSelection
  registerAllocationClosed : C.registerAllocation
  instructionSchedulingClosed : C.instructionScheduling
  machineCodeEmittedClosed : C.machineCodeEmitted

def CodeGenerationClosed (C : CodeGenerationPackage) : Prop :=
  C.instructionSelection ∧ C.registerAllocation ∧
  C.instructionScheduling ∧ C.machineCodeEmitted

theorem code_generation_closed_from_evidence (C : CodeGenerationPackage)
    (E : CodeGenerationEvidence C) : CodeGenerationClosed C := by
  exact And.intro E.instructionSelectionClosed
    (And.intro E.registerAllocationClosed
      (And.intro E.instructionSchedulingClosed E.machineCodeEmittedClosed))

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse