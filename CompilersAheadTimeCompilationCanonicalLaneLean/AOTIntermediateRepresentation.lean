import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure IntermediateRepresentationPackage where
  irType : Type u
  controlFlowGraph : Prop
  ssaForm : Prop
  typeInformation : Prop
  sideEffectAnnotation : Prop

structure IntermediateRepresentationEvidence (I : IntermediateRepresentationPackage) where
  controlFlowGraphClosed : I.controlFlowGraph
  ssaFormClosed : I.ssaForm
  typeInformationClosed : I.typeInformation
  sideEffectAnnotationClosed : I.sideEffectAnnotation

def IntermediateRepresentationClosed (I : IntermediateRepresentationPackage) : Prop :=
  I.controlFlowGraph ∧ I.ssaForm ∧ I.typeInformation ∧ I.sideEffectAnnotation

theorem intermediate_representation_closed_from_evidence (I : IntermediateRepresentationPackage) (E : IntermediateRepresentationEvidence I) :
    IntermediateRepresentationClosed I := by
  exact And.intro E.controlFlowGraphClosed (And.intro E.ssaFormClosed (And.intro E.typeInformationClosed E.sideEffectAnnotationClosed))

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse
