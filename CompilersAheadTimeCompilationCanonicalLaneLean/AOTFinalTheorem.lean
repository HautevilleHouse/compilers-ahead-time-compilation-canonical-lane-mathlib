import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompilersAheadTimeCompilationCanonicalLaneLean.AOTGateLemmas

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

def ConstrainedAOTClosure (A : AOTAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_aot_endgame (A : AOTAdmissibleClass) : ConstrainedAOTClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse
