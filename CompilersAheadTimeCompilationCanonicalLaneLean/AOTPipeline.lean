import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure AOTPipelinePackage {A : AdmissibleClass}
    {I : IRPackage A} where
  frontendParsed : Prop
  semanticAnalysisPassed : Prop
  optimizationApplied : Prop
  targetCodeGenerated : Prop
  targetCodeOptimized : Prop

structure AOTPipelineEvidence {A : AdmissibleClass}
    {I : IRPackage A} (P : AOTPipelinePackage I) where
  frontendParsedClosed : P.frontendParsed
  semanticAnalysisPassedClosed : P.semanticAnalysisPassed
  optimizationAppliedClosed : P.optimizationApplied
  targetCodeGeneratedClosed : P.targetCodeGenerated
  targetCodeOptimizedClosed : P.targetCodeOptimized

def AOTPipelineClosed {A : AdmissibleClass}
    {I : IRPackage A} (P : AOTPipelinePackage I) : Prop :=
  P.frontendParsed ∧ P.semanticAnalysisPassed ∧
  P.optimizationApplied ∧ P.targetCodeGenerated ∧
  P.targetCodeOptimized

theorem aot_pipeline_closed_from_evidence
    {A : AdmissibleClass} {I : IRPackage A}
    (P : AOTPipelinePackage I) (E : AOTPipelineEvidence P) :
    AOTPipelineClosed P := by
  exact And.intro E.frontendParsedClosed
    (And.intro E.semanticAnalysisPassedClosed
      (And.intro E.optimizationAppliedClosed
        (And.intro E.targetCodeGeneratedClosed
          E.targetCodeOptimizedClosed)))

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse