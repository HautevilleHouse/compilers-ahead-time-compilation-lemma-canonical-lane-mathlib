import canonicalLaneMathlib.AdmissibleClass

/-!
# Constant Folding Package
-/

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure ConstantFoldingPackage where
  evaluableExpressions : Type u
  foldingCorrect : Prop
  foldingTerm : foldingCorrect

structure ConstantFoldingEvidence (C : ConstantFoldingPackage) where
  foldingCorrectClosed : C.foldingCorrect

def ConstantFoldingClosed (C : ConstantFoldingPackage) : Prop :=
  C.foldingCorrect

theorem constant_folding_closed_from_evidence (C : ConstantFoldingPackage) (E : ConstantFoldingEvidence C) : ConstantFoldingClosed C := by
  exact E.foldingCorrectClosed

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse