import canonicalLaneMathlib.OptimizationPipeline

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure CodeGeneration (P : AOTPackage) (F : FrontendAnalysis P) (O : OptimizationPipeline P F) where
  targetCodeIR : Type
  registerAllocationCorrect : Prop
  instructionSelectionCorrect : Prop
  emissionCorrect : Prop
  registerAllocationCorrectClosed : registerAllocationCorrect
  instructionSelectionCorrectClosed : instructionSelectionCorrect
  emissionCorrectClosed : emissionCorrect

structure CodeGenerationEvidence (P : AOTPackage) (F : FrontendAnalysis P) (O : OptimizationPipeline P F) (G : CodeGeneration P F O) where
  registerAllocationCorrectClosed : G.registerAllocationCorrect
  instructionSelectionCorrectClosed : G.instructionSelectionCorrect
  emissionCorrectClosed : G.emissionCorrect

def CodeGenerationClosed (P : AOTPackage) (F : FrontendAnalysis P) (O : OptimizationPipeline P F) (G : CodeGeneration P F O) : Prop :=
  G.registerAllocationCorrect ∧ G.instructionSelectionCorrect ∧ G.emissionCorrect

theorem code_generation_closed_from_evidence (P : AOTPackage) (F : FrontendAnalysis P) (O : OptimizationPipeline P F) (G : CodeGeneration P F O) (E : CodeGenerationEvidence P F O G) :
    CodeGenerationClosed P F O G := by
  exact And.intro E.registerAllocationCorrectClosed
    (And.intro E.instructionSelectionCorrectClosed E.emissionCorrectClosed)

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse