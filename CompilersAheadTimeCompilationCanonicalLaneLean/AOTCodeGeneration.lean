import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompilersAheadTimeCompilationCanonicalLaneLean.AOTIntermediateRepresentation

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure CodeGenerationPackage {I : IntermediateRepresentationPackage} where
  targetArchitecture : Type u
  instructionSelection : Prop
  registerAllocation : Prop
  instructionScheduling : Prop
  objectCodeEmission : Prop

structure CodeGenerationEvidence {I : IntermediateRepresentationPackage} (C : CodeGenerationPackage I) where
  instructionSelectionClosed : C.instructionSelection
  registerAllocationClosed : C.registerAllocation
  instructionSchedulingClosed : C.instructionScheduling
  objectCodeEmissionClosed : C.objectCodeEmission

def CodeGenerationClosed {I : IntermediateRepresentationPackage} (C : CodeGenerationPackage I) : Prop :=
  C.instructionSelection ∧ C.registerAllocation ∧ C.instructionScheduling ∧ C.objectCodeEmission

theorem code_generation_closed_from_evidence {I : IntermediateRepresentationPackage} (C : CodeGenerationPackage I) (E : CodeGenerationEvidence C) :
    CodeGenerationClosed C := by
  exact And.intro E.instructionSelectionClosed (And.intro E.registerAllocationClosed (And.intro E.instructionSchedulingClosed E.objectCodeEmissionClosed))

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse
