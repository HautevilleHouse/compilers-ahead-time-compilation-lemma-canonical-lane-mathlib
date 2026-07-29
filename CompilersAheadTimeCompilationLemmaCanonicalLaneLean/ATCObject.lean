import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationLemmaCanonicalLaneLean

/-!
# ATC Object Package
-/

structure ATCObject where
  sourceProgram : String
  targetCode : String
  transformation: Prop
  aheadTimeOptimizationCorrect : Prop
  conclusion : aheadTimeOptimizationCorrect

structure ATCWitnessClosed (O : ATCObject) : Prop :=
  O.aheadTimeOptimizationCorrect

end CompilersAheadTimeCompilationLemmaCanonicalLaneLean
end HautevilleHouse