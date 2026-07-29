import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure ControlFlowGraph where
  nodes : List String
  edges : List (String × String)
  entry : String

def GraphWellFormed (G : ControlFlowGraph) : Prop :=
  G.entry ∈ G.nodes ∧ ∀ (a,b) ∈ G.edges, a ∈ G.nodes ∧ b ∈ G.nodes

structure DataFlowAnalysis where
  cfg : ControlFlowGraph
  reachingDefinitions : List (String × String)
  livenessAnalysis : List (String × String)
  analysisClosed : Prop

def DataFlowAnalysisClosed (D : DataFlowAnalysis) : Prop :=
  D.analysisClosed

structure DataFlowEvidence (D : DataFlowAnalysis) where
  analysisClosedTerm : D.analysisClosed

theorem data_flow_closed_from_evidence (D : DataFlowAnalysis) (E : DataFlowEvidence D) : DataFlowAnalysisClosed D :=
  E.analysisClosedTerm

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse