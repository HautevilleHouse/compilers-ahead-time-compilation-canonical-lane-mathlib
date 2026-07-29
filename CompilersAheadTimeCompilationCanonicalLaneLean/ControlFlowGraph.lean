import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure ControlFlowGraph where
  basicBlocks : Nat
  edges : Nat
  dominatorTree : Prop
  loopStructure : Prop

structure CFGConstruction where
  entryBlock : String
  exitBlock : String
  blocksPartitioned : Prop
  edgesTyped : Prop

structure CFGEvidence (C : CFGConstruction) where
  entryBlockClosed : C.entryBlock = "entry"
  exitBlockClosed : C.exitBlock = "exit"
  blocksPartitionedClosed : C.blocksPartitioned
  edgesTypedClosed : C.edgesTyped

def CFGClosed (C : CFGConstruction) : Prop :=
  C.blocksPartitioned ∧ C.edgesTyped

theorem cfg_closed_from_evidence (C : CFGConstruction) (E : CFGEvidence C) : CFGClosed C := by
  exact And.intro E.blocksPartitionedClosed E.edgesTypedClosed

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse
