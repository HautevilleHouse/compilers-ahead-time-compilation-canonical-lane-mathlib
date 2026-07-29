import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

/-!
# IR Canonical Form Package

This module defines the intermediate representation (IR) canonical form used in
ahead-of-time compilation. The canonical form serves as the admissible structure
for the compiler's optimization and code generation pipeline.
-/

structure IRCanonicalForm where
  instructions : List String
  dataFlow : Prop
  controlFlow : Prop
  sideEffectFree : Prop
  memoryAccessPattern : Prop

def IRCanonicalFormClosed (I : IRCanonicalForm) : Prop :=
  I.dataFlow ∧ I.controlFlow ∧ I.sideEffectFree ∧ I.memoryAccessPattern

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse