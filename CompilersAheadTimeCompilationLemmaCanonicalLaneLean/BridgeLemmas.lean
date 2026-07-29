import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ATCWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse