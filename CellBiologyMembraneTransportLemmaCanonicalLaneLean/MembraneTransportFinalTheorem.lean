import CellBiologyMembraneTransportLemmaCanonicalLaneLean.BridgeLemmas
import CellBiologyMembraneTransportLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

def MembraneTransportConstrainedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem membrane_transport_constrained_endgame (A : AdmissibleClass) :
    MembraneTransportConstrainedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse