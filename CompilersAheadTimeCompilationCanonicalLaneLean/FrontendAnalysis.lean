import canonicalLaneMathlib.AOTPackage

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure FrontendAnalysis (P : AOTPackage) where
  astParsingCorrect : Prop
  typeCheckingComplete : Prop
  closureConversionValid : Prop
  devirtualizationApplied : Prop
  astParsingCorrectClosed : astParsingCorrect
  typeCheckingCompleteClosed : typeCheckingComplete
  closureConversionValidClosed : closureConversionValid
  devirtualizationAppliedClosed : devirtualizationApplied

structure FrontendEvidence (P : AOTPackage) (F : FrontendAnalysis P) where
  astParsingCorrectClosed : F.astParsingCorrect
  typeCheckingCompleteClosed : F.typeCheckingComplete
  closureConversionValidClosed : F.closureConversionValid
  devirtualizationAppliedClosed : F.devirtualizationApplied

def FrontendClosed (P : AOTPackage) (F : FrontendAnalysis P) : Prop :=
  F.astParsingCorrect ∧ F.typeCheckingComplete ∧ F.closureConversionValid ∧ F.devirtualizationApplied

theorem frontend_closed_from_evidence (P : AOTPackage) (F : FrontendAnalysis P) (E : FrontendEvidence P F) :
    FrontendClosed P F := by
  exact And.intro E.astParsingCorrectClosed
    (And.intro E.typeCheckingCompleteClosed
      (And.intro E.closureConversionValidClosed E.devirtualizationAppliedClosed))

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse