import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

def ConstrainedAheadTimeCompilationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ahead_time_compilation_endgame (A : AdmissibleClass) : ConstrainedAheadTimeCompilationClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse