import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompilersAheadTimeCompilationCanonicalLaneLean.AOTAdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

def bridgeClosed (A : AOTAdmissibleClass) : Prop :=
  AOTWitnessClosed A.object

theorem bridge_from_admissible_class (A : AOTAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse
