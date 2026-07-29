import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas
import canonicalLaneMathlib.FinalTheorem

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure AOTPackage where
  irRepresentation : Type
  optimizerPassList : List String
  codeGenTargets : List String
  aotCompilesCorrectly : Prop
  runtimePerformancePreserved : Prop
  compileTimeReductionAchieved : Prop
  aotCompilesCorrectlyClosed : aotCompilesCorrectly
  runtimePerformancePreservedClosed : runtimePerformancePreserved
  compileTimeReductionAchievedClosed : compileTimeReductionAchieved

structure AOTEvidence (P : AOTPackage) where
  aotCompilesCorrectlyClosed : P.aotCompilesCorrectly
  runtimePerformancePreservedClosed : P.runtimePerformancePreserved
  compileTimeReductionAchievedClosed : P.compileTimeReductionAchieved

def AOTPackageClosed (P : AOTPackage) : Prop :=
  P.aotCompilesCorrectly ∧ P.runtimePerformancePreserved ∧ P.compileTimeReductionAchieved

theorem aot_package_closed_from_evidence (P : AOTPackage) (E : AOTEvidence P) :
    AOTPackageClosed P := by
  exact And.intro E.aotCompilesCorrectlyClosed
    (And.intro E.runtimePerformancePreservedClosed E.compileTimeReductionAchievedClosed)

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse