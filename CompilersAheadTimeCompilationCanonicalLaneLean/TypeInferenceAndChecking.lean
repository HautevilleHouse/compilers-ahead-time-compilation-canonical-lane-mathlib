import canonicalLaneMathlib.AdmissibleClass
import CompilersAheadTimeCompilationCanonicalLaneLean.IRCanonicalForm

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

/-!
# Type Inference and Checking Package

This module defines the type inference and type checking system for an
ahead-of-time compiled language. The type system verifies program correctness
before code generation.
-/

structure TypeInferenceAndChecking (I : IRCanonicalForm) where
  typeEnvironment : Prop
  unification : Prop
  typeRuleApplication : Prop
  typeSafety : Prop

def TypeInferenceAndCheckingClosed {I : IRCanonicalForm} (T : TypeInferenceAndChecking I) : Prop :=
  T.typeEnvironment ∧ T.unification ∧ T.typeRuleApplication ∧ T.typeSafety

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse