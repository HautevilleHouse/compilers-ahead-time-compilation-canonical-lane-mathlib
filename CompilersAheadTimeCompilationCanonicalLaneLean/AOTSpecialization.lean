import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CompilersAheadTimeCompilationCanonicalLaneLean.AOTIntermediateRepresentation

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure SpecializationPackage {I : IntermediateRepresentationPackage} where
  profileGuidedOptimization : Prop
  interproceduralAnalysis : Prop
  typeSpecialization : Prop
  constantPropagation : Prop

structure SpecializationEvidence {I : IntermediateRepresentationPackage} (S : SpecializationPackage I) where
  profileGuidedOptimizationClosed : S.profileGuidedOptimization
  interproceduralAnalysisClosed : S.interproceduralAnalysis
  typeSpecializationClosed : S.typeSpecialization
  constantPropagationClosed : S.constantPropagation

def SpecializationClosed {I : IntermediateRepresentationPackage} (S : SpecializationPackage I) : Prop :=
  S.profileGuidedOptimization ∧ S.interproceduralAnalysis ∧ S.typeSpecialization ∧ S.constantPropagation

theorem specialization_closed_from_evidence {I : IntermediateRepresentationPackage} (S : SpecializationPackage I) (E : SpecializationEvidence S) :
    SpecializationClosed S := by
  exact And.intro E.profileGuidedOptimizationClosed (And.intro E.interproceduralAnalysisClosed (And.intro E.typeSpecializationClosed E.constantPropagationClosed))

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse
