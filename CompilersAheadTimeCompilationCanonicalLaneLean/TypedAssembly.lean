import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompilersAheadTimeCompilationCanonicalLaneLean

structure TypedAssembly where
  instructions : List String
  registerAllocation : Prop
  typeCorrectness : Prop

structure TypedAssemblyConstruction where
  untypedInstructions : List String
  typePass : Prop
  registerPass : Prop

structure TypedAssemblyEvidence (T : TypedAssemblyConstruction) where
  typePassClosed : T.typePass
  registerPassClosed : T.registerPass

def TypedAssemblyClosed (T : TypedAssemblyConstruction) : Prop :=
  T.typePass ∧ T.registerPass

theorem typed_assembly_closed_from_evidence (T : TypedAssemblyConstruction) (E : TypedAssemblyEvidence T) : TypedAssemblyClosed T := by
  exact And.intro E.typePassClosed E.registerPassClosed

end CompilersAheadTimeCompilationCanonicalLaneLean
end HautevilleHouse
