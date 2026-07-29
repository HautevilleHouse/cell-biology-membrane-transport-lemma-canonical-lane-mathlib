import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure VesicularTransport where
  clathrinMediated : Prop
  caveolaeMediated : Prop
  rabGTPases : Type
  snareProteins : Type
  exocytosis : Prop
  endocytosis : Prop

structure VesicularTransportEvidence (V : VesicularTransport) where
  clathrinMediatedClosed : V.clathrinMediated
  caveolaeMediatedClosed : V.caveolaeMediated
  exocytosisClosed : V.exocytosis
  endocytosisClosed : V.endocytosis

def VesicularTransportClosed (V : VesicularTransport) : Prop :=
  V.clathrinMediated ∧ V.caveolaeMediated ∧ V.exocytosis ∧ V.endocytosis

theorem vesicular_transport_closed_from_evidence (V : VesicularTransport) (Ev : VesicularTransportEvidence V) : VesicularTransportClosed V := by
  exact And.intro Ev.clathrinMediatedClosed (And.intro Ev.caveolaeMediatedClosed (And.intro Ev.exocytosisClosed Ev.endocytosisClosed))

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse
