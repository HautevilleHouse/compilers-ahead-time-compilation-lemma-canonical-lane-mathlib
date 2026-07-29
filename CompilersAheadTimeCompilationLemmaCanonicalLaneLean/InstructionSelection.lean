import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure InstructionSelectionPackage where
  targetInstructionSetModeled : Prop
  patternMatchingCoverage : Prop
  optimalCostModel : Prop
  registerAllocationConstraints : Prop

structure InstructionSelectionEvidence (I : InstructionSelectionPackage) where
  targetInstructionSetModeledClosed : I.targetInstructionSetModeled
  patternMatchingCoverageClosed : I.patternMatchingCoverage
  optimalCostModelClosed : I.optimalCostModel
  registerAllocationConstraintsClosed : I.registerAllocationConstraints

def InstructionSelectionClosed (I : InstructionSelectionPackage) : Prop :=
  I.targetInstructionSetModeled ∧ I.patternMatchingCoverage ∧ I.optimalCostModel ∧ I.registerAllocationConstraints

theorem instruction_selection_closed_from_evidence (I : InstructionSelectionPackage) (E : InstructionSelectionEvidence I) : InstructionSelectionClosed I :=
  And.intro E.targetInstructionSetModeledClosed (And.intro E.patternMatchingCoverageClosed (And.intro E.optimalCostModelClosed E.registerAllocationConstraintsClosed))

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse