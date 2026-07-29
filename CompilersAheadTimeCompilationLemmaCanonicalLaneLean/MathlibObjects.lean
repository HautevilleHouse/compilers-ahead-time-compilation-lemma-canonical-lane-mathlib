import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

structure CompilationSpace where
  carrier : Type
  structure : String

structure AOTCompilationAdmittedObject where
  space : CompilationSpace
  closureProperty : Prop
  conclusion : closureProperty

def CompilationWitnessClosed (O : AOTCompilationAdmittedObject) : Prop :=
  O.closureProperty

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse
