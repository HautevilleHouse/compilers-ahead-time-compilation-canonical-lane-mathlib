import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure ParseTree where
  root : Type
  children : List ParseTree
  tokenRange : Nat × Nat

structure IntermediateRepresentation where
  sourceProgram : String
  parsedTree : ParseTree
  astRepresentation : ParseTree
  symbolTable : List (String × Type)

structure ParsingPackage where
  source : String
  tree : ParseTree
  ir : IntermediateRepresentation
  parsingClosed : Prop

def ParsingPackageClosed (P : ParsingPackage) : Prop :=
  P.parsingClosed

structure ParsingEvidence (P : ParsingPackage) where
  parsingClosedTerm : P.parsingClosed

theorem parsing_closed_from_evidence (P : ParsingPackage) (E : ParsingEvidence P) : ParsingPackageClosed P :=
  E.parsingClosedTerm

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse