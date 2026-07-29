import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure IonChannelGating where
  voltageSensitive : Prop
  ligandSensitive : Prop
  openState : Prop
  closedState : Prop
  selectivityFilter : Prop

structure IonChannelGateEvidence (I : IonChannelGating) where
  voltageSensitiveClosed : I.voltageSensitive
  ligandSensitiveClosed : I.ligandSensitive
  openStateClosed : I.openState
  closedStateClosed : I.closedState
  selectivityFilterClosed : I.selectivityFilter

def IonChannelGateClosed (I : IonChannelGating) : Prop :=
  I.voltageSensitive ∧ I.ligandSensitive ∧ I.openState ∧ I.closedState ∧ I.selectivityFilter

theorem ion_channel_gate_closed_from_evidence (I : IonChannelGating) (E : IonChannelGateEvidence I) : IonChannelGateClosed I := by
  exact And.intro E.voltageSensitiveClosed (And.intro E.ligandSensitiveClosed (And.intro E.openStateClosed (And.intro E.closedStateClosed E.selectivityFilterClosed)))

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse
