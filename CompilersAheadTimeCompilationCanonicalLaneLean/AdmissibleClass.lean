import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure AdmissibleClass where
  object : AOTAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AOTWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse