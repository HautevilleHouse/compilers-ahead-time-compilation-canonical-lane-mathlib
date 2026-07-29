import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompilersAheadTimeCompilationCanonicalLaneLean.AOTIntermediateRepresentation

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure OptimizationPassPackage {I : IntermediateRepresentationPackage} where
  deadCodeElimination : Prop
  constantFolding : Prop
  inlining : Prop
  loopOptimizations : Prop

structure OptimizationPassEvidence {I : IntermediateRepresentationPackage} (O : OptimizationPassPackage I) where
  deadCodeEliminationClosed : O.deadCodeElimination
  constantFoldingClosed : O.constantFolding
  inliningClosed : O.inlining
  loopOptimizationsClosed : O.loopOptimizations

def OptimizationPassClosed {I : IntermediateRepresentationPackage} (O : OptimizationPassPackage I) : Prop :=
  O.deadCodeElimination ∧ O.constantFolding ∧ O.inlining ∧ O.loopOptimizations

theorem optimization_pass_closed_from_evidence {I : IntermediateRepresentationPackage} (O : OptimizationPassPackage I) (E : OptimizationPassEvidence O) :
    OptimizationPassClosed O := by
  exact And.intro E.deadCodeEliminationClosed (And.intro E.constantFoldingClosed (And.intro E.inliningClosed E.loopOptimizationsClosed))

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse
