import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure IRPackage (A : AdmissibleClass) where
  irType : Type u
  semanticPreservation : Prop
  optimizationApplied : Prop
  loweringCorrect : Prop
  targetProduced : Prop

structure IREvidence {A : AdmissibleClass} (P : IRPackage A) where
  semanticPreservationClosed : P.semanticPreservation
  optimizationAppliedClosed : P.optimizationApplied
  loweringCorrectClosed : P.loweringCorrect
  targetProducedClosed : P.targetProduced

def IRClosed {A : AdmissibleClass} (P : IRPackage A) : Prop :=
  P.semanticPreservation ∧ P.optimizationApplied ∧
  P.loweringCorrect ∧ P.targetProduced

theorem ir_closed_from_evidence
    {A : AdmissibleClass} (P : IRPackage A) (E : IREvidence P) :
    IRClosed P := by
  exact And.intro E.semanticPreservationClosed
    (And.intro E.optimizationAppliedClosed
      (And.intro E.loweringCorrectClosed E.targetProducedClosed))

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse