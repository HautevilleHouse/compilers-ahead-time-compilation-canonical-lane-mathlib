import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure TypeChecker where
  context : List (String × Type)
  currentTerm : String
  inferredType : Type

def TypeCheckSucceed (T : TypeChecker) : Prop :=
  T.currentTerm = "well-typed"

structure TypeCheckingPackage where
  checker : TypeChecker
  checkingClosed : Prop

def TypeCheckingPackageClosed (P : TypeCheckingPackage) : Prop :=
  P.checkingClosed

structure TypeCheckingEvidence (P : TypeCheckingPackage) where
  checkingClosedTerm : P.checkingClosed

theorem typechecking_closed_from_evidence (P : TypeCheckingPackage) (E : TypeCheckingEvidence P) : TypeCheckingPackageClosed P :=
  E.checkingClosedTerm

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse