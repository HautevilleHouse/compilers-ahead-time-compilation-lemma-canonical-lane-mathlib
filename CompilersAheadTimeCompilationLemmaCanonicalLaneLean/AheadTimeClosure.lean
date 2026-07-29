import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

def ConstrainedAheadTimeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ahead_time_endgame (A : AdmissibleClass) :
    ConstrainedAheadTimeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse