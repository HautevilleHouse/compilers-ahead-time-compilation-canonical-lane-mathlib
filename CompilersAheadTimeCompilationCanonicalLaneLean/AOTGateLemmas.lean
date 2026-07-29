import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompilersAheadTimeCompilationCanonicalLaneLean.AOTBridgeLemmas

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

def gateClosed (A : AOTAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AOTAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse
