import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure EpithelialBarrier where
  tightJunctions : Prop
  transcellularPathway : Prop
  paracellularPathway : Prop
  soluteFlux : Type
  waterFlux : Type
  transportProteins : Type

structure EpithelialTransportEvidence (E : EpithelialBarrier) where
  tightJunctionsClosed : E.tightJunctions
  transcellularPathwayClosed : E.transcellularPathway
  paracellularPathwayClosed : E.paracellularPathway

def EpithelialTransportClosed (E : EpithelialBarrier) : Prop :=
  E.tightJunctions ∧ E.transcellularPathway ∧ E.paracellularPathway

theorem epithelial_transport_closed_from_evidence (E : EpithelialBarrier) (Ev : EpithelialTransportEvidence E) : EpithelialTransportClosed E := by
  exact And.intro Ev.tightJunctionsClosed (And.intro Ev.transcellularPathwayClosed Ev.paracellularPathwayClosed)

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse
