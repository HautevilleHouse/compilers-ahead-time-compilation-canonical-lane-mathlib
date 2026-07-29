import canonicalLaneMathlib.AdmissibleClass
import CompilersAheadTimeCompilationCanonicalLaneLean.IRCanonicalForm

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

/-!
# Static Single Assignment (SSA) Form Package

This module defines the Static Single Assignment (SSA) form, a canonical IR
representation where each variable is assigned exactly once, simplifying
optimizations in ahead-of-time compilers.
-/

structure StaticSingleAssignment (I : IRCanonicalForm) where
  uniqueDefinitions : Prop
  phiFunctions : Prop
  dominanceFrontier : Prop
  liveVariableAnalysis : Prop

def StaticSingleAssignmentClosed {I : IRCanonicalForm} (S : StaticSingleAssignment I) : Prop :=
  S.uniqueDefinitions ∧ S.phiFunctions ∧ S.dominanceFrontier ∧ S.liveVariableAnalysis

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse