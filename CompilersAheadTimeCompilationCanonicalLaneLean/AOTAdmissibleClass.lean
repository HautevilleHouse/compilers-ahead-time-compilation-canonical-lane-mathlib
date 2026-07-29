import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure AOTAdmittedObject where
  sourceProgram : Type u
  parseTree : Prop
  semanticAnalysis : Prop
  compilationResult : Prop
  conclusion : Prop

structure AOTAdmissibleClass where
  object : AOTAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def AOTWitnessClosed (O : AOTAdmittedObject) : Prop := O.conclusion

def AOTAdmittedClosure (A : AOTAdmissibleClass) : Prop :=
  AOTWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse
