import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure AOTSpecialization where
  specializedIR : IRProperties
  targetArch : Type
  resourceConstraints : Prop
  timingGuarantee : Prop
  resourceConstraintsClosed : resourceConstraints
  timingGuaranteeClosed : timingGuarantee

def AOTSpecializationClosed (S : AOTSpecialization) : Prop :=
  S.resourceConstraints ∧ S.timingGuarantee

theorem aot_specialization_closed_from_evidence (S : AOTSpecialization) :
    AOTSpecializationClosed S := by
  exact And.intro S.resourceConstraintsClosed S.timingGuaranteeClosed

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse
