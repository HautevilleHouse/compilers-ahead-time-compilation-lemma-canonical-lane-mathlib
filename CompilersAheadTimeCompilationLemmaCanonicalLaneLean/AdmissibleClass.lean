import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ATCObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ATCWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse