import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AOTWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse