import canonicalLaneMathlib.AdmissibleClass
import CompilersAheadTimeCompilationLemmaCanonicalLaneLean.BridgeLemmas
import CompilersAheadTimeCompilationLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

def ConstrainedAOTClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_aot_endgame (A : AdmissibleClass) :
    ConstrainedAOTClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse