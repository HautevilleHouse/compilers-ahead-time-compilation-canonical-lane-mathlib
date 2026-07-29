import canonicalLaneMathlib.CodeGeneration

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure RuntimeIntegration (P : AOTPackage) (F : FrontendAnalysis P) (O : OptimizationPipeline P F) (G : CodeGeneration P F O) where
  runtimeLibraryLinked : Prop
  garbageCollectionIntegrated : Prop
  exceptionHandlingCorrect : Prop
  startupSequenceValid : Prop
  runtimeLibraryLinkedClosed : runtimeLibraryLinked
  garbageCollectionIntegratedClosed : garbageCollectionIntegrated
  exceptionHandlingCorrectClosed : exceptionHandlingCorrect
  startupSequenceValidClosed : startupSequenceValid

structure RuntimeIntegrationEvidence (P : AOTPackage) (F : FrontendAnalysis P) (O : OptimizationPipeline P F) (G : CodeGeneration P F O) (R : RuntimeIntegration P F O G) where
  runtimeLibraryLinkedClosed : R.runtimeLibraryLinked
  garbageCollectionIntegratedClosed : R.garbageCollectionIntegrated
  exceptionHandlingCorrectClosed : R.exceptionHandlingCorrect
  startupSequenceValidClosed : R.startupSequenceValid

def RuntimeIntegrationClosed (P : AOTPackage) (F : FrontendAnalysis P) (O : OptimizationPipeline P F) (G : CodeGeneration P F O) (R : RuntimeIntegration P F O G) : Prop :=
  R.runtimeLibraryLinked ∧ R.garbageCollectionIntegrated ∧ R.exceptionHandlingCorrect ∧ R.startupSequenceValid

theorem runtime_integration_closed_from_evidence (P : AOTPackage) (F : FrontendAnalysis P) (O : OptimizationPipeline P F) (G : CodeGeneration P F O) (R : RuntimeIntegration P F O G) (E : RuntimeIntegrationEvidence P F O G R) :
    RuntimeIntegrationClosed P F O G R := by
  exact And.intro E.runtimeLibraryLinkedClosed
    (And.intro E.garbageCollectionIntegratedClosed
      (And.intro E.exceptionHandlingCorrectClosed E.startupSequenceValidClosed))

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse