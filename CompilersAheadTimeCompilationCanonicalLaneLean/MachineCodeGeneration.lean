import canonicalLaneMathlib.AdmissibleClass
import CompilersAheadTimeCompilationCanonicalLaneLean.IRCanonicalForm

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

/-!
# Machine Code Generation Package

This module defines the final stage of ahead-of-time compilation: generating
target machine code from the optimized IR. It includes register allocation,
instruction selection, and scheduling.
-/

structure MachineCodeGeneration (I : IRCanonicalForm) where
  registerAllocation : Prop
  instructionSelection : Prop
  instructionScheduling : Prop
  binaryEmission : Prop

def MachineCodeGenerationClosed {I : IRCanonicalForm} (M : MachineCodeGeneration I) : Prop :=
  M.registerAllocation ∧ M.instructionSelection ∧ M.instructionScheduling ∧ M.binaryEmission

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse