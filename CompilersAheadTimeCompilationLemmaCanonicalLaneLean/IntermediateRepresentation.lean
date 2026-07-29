import canonicalLaneMathlib.AdmissibleClass

/-!
# Intermediate Representation Package
-/

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure IRPackage where
  controlFlow : Type u
  dataFlow : Type v
  ssaForm : Prop
  typeInformation : Prop
  ssaFormTerm : ssaForm
  typeInformationTerm : typeInformation

structure IREvidence (I : IRPackage) where
  ssaFormClosed : I.ssaForm
  typeInformationClosed : I.typeInformation

def IRClosed (I : IRPackage) : Prop :=
  I.ssaForm ∧ I.typeInformation

theorem ir_closed_from_evidence (I : IRPackage) (E : IREvidence I) : IRClosed I := by
  exact And.intro E.ssaFormClosed E.typeInformationClosed

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse