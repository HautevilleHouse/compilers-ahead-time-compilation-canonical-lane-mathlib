import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure ConstantFolding where
  expression : String
  foldedValue : Option String

structure DeadCodeElimination where
  sourceIR : List String
  liveIR : List String
  liveSet : List String

structure OptimizationPackage where
  constFold : ConstantFolding
  deadCode : DeadCodeElimination
  optimizationsApplied : Prop

def OptimizationPackageClosed (O : OptimizationPackage) : Prop :=
  O.optimizationsApplied

structure OptimizationEvidence (O : OptimizationPackage) where
  optimizationsAppliedTerm : O.optimizationsApplied

theorem optimization_closed_from_evidence (O : OptimizationPackage) (E : OptimizationEvidence O) : OptimizationPackageClosed O :=
  E.optimizationsAppliedTerm

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse