import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure CompilerSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CompilerAdmittedObject where
  space : CompilerSpace
  closedCompilation : Prop
  aheadOfTime : Prop
  objectCodeModel : Type
  objectCodeTopology : TopologicalSpace objectCodeModel
  homomorphicToTarget : Prop
  conclusion : homomorphicToTarget

structure CompilerEndgameState where
  object : CompilerAdmittedObject

def CompilerWitnessClosed (O : CompilerAdmittedObject) : Prop :=
  O.homomorphicToTarget

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse