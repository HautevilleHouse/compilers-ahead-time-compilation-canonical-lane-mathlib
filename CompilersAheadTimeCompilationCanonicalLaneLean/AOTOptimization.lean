import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure AOTOptimization where
  constantFolding : Prop
  deadCodeElimination : Prop
  inlining : Prop
  loopUnrolling : Prop

structure AOTOptimizationConstruction where
  foldingApplied : Prop
  deadCodeEliminated : Prop
  inliningDone : Prop
  unrollingDepth : Nat

structure AOTOptimizationEvidence (O : AOTOptimizationConstruction) where
  foldingAppliedClosed : O.foldingApplied
  deadCodeEliminatedClosed : O.deadCodeEliminated
  inliningDoneClosed : O.inliningDone
  unrollingDepthClosed : O.unrollingDepth > 0

def AOTOptimizationClosed (O : AOTOptimizationConstruction) : Prop :=
  O.foldingApplied ∧ O.deadCodeEliminated ∧ O.inliningDone ∧ (O.unrollingDepth > 0)

theorem aot_optimization_closed_from_evidence (O : AOTOptimizationConstruction) (E : AOTOptimizationEvidence O) : AOTOptimizationClosed O := by
  exact And.intro E.foldingAppliedClosed
    (And.intro E.deadCodeEliminatedClosed
      (And.intro E.inliningDoneClosed E.unrollingDepthClosed))

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse
