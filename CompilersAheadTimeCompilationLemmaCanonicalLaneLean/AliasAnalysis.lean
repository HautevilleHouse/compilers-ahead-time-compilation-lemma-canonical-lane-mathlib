import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure AliasAnalysisPackage where
  pointsToInformation : Prop
  mayAliasPairs : Prop
  noAliasAssumptions : Prop
  memorySsaForm : Prop

structure AliasAnalysisEvidence (A : AliasAnalysisPackage) where
  pointsToInformationClosed : A.pointsToInformation
  mayAliasPairsClosed : A.mayAliasPairs
  noAliasAssumptionsClosed : A.noAliasAssumptions
  memorySsaFormClosed : A.memorySsaForm

def AliasAnalysisClosed (A : AliasAnalysisPackage) : Prop :=
  A.pointsToInformation ∧ A.mayAliasPairs ∧ A.noAliasAssumptions ∧ A.memorySsaForm

theorem alias_analysis_closed_from_evidence (A : AliasAnalysisPackage) (E : AliasAnalysisEvidence A) : AliasAnalysisClosed A :=
  And.intro E.pointsToInformationClosed (And.intro E.mayAliasPairsClosed (And.intro E.noAliasAssumptionsClosed E.memorySsaFormClosed))

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse