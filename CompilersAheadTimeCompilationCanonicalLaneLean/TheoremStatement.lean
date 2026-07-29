import CompilersAheadTimeCompilationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  aotConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def aotConstrainedTheoremClosed : Prop :=
  ∀ A : AdmissibleClass, bridgeClosed A ∧ gateClosed A

theorem theorem_statement_initial : aotConstrainedTheoremClosed := by
  intro A
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse
