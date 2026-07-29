import canonicalLaneMathlib.AdmissibleClass
import CompilersAheadTimeCompilationCanonicalLaneLean.IRCanonicalForm

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

/-!
# Ahead-of-Time Compilation Pipeline Package

This module defines the stages of an ahead-of-time compilation pipeline, from
source code to executable binary, ensuring each stage preserves the admissible
class constraints.
-/

structure AOTCompilationPipeline (I : IRCanonicalForm) where
  parsing : Prop
  semanticAnalysis : Prop
  irGeneration : Prop
  optimization : Prop
  codeGeneration : Prop
  closure : IRCanonicalFormClosed I

def AOTCompilationPipelineClosed {I : IRCanonicalForm} (P : AOTCompilationPipeline I) : Prop :=
  P.parsing ∧ P.semanticAnalysis ∧ P.irGeneration ∧ P.optimization ∧ P.codeGeneration

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse