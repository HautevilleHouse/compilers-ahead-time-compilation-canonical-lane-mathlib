import canonicalLaneMathlib.FrontendAnalysis

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure OptimizationPipeline (P : AOTPackage) (F : FrontendAnalysis P) where
  inliningDecisions : Prop
  constantFoldingApplied : Prop
  deadCodeEliminationApplied : Prop
  loopOptimizationsApplied : Prop
  inliningDecisionsClosed : inliningDecisions
  constantFoldingAppliedClosed : constantFoldingApplied
  deadCodeEliminationAppliedClosed : deadCodeEliminationApplied
  loopOptimizationsAppliedClosed : loopOptimizationsApplied

structure OptimizationEvidence (P : AOTPackage) (F : FrontendAnalysis P) (O : OptimizationPipeline P F) where
  inliningDecisionsClosed : O.inliningDecisions
  constantFoldingAppliedClosed : O.constantFoldingApplied
  deadCodeEliminationAppliedClosed : O.deadCodeEliminationApplied
  loopOptimizationsAppliedClosed : O.loopOptimizationsApplied

def OptimizationClosed (P : AOTPackage) (F : FrontendAnalysis P) (O : OptimizationPipeline P F) : Prop :=
  O.inliningDecisions ∧ O.constantFoldingApplied ∧ O.deadCodeEliminationApplied ∧ O.loopOptimizationsApplied

theorem optimization_closed_from_evidence (P : AOTPackage) (F : FrontendAnalysis P) (O : OptimizationPipeline P F) (E : OptimizationEvidence P F O) :
    OptimizationClosed P F O := by
  exact And.intro E.inliningDecisionsClosed
    (And.intro E.constantFoldingAppliedClosed
      (And.intro E.deadCodeEliminationAppliedClosed E.loopOptimizationsAppliedClosed))

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse