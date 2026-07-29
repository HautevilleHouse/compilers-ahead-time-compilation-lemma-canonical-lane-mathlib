import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

def ConstrainedATCClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_atc_endgame (A : AdmissibleClass) :
    ConstrainedATCClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse