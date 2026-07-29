import HautevilleHouse.CellBiologyMembraneTransportLemmaCanonicalLaneLean.TransportGateLemmas

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

def ConstrainedMembraneTransportClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_membrane_transport_endgame (A : AdmissibleClass) :
    ConstrainedMembraneTransportClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse