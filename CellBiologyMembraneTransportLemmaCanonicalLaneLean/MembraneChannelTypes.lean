import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure IonChannel (species : Type) where
  selectivePermeability : Prop
  gatingMechanism : Prop
  conductance : Prop

structure IonChannelEvidence (ch : IonChannel) where
  selectivePermeabilityClosed : ch.selectivePermeability
  gatingMechanismClosed : ch.gatingMechanism
  conductanceClosed : ch.conductance

def IonChannelClosed (ch : IonChannel) : Prop :=
  ch.selectivePermeability ∧ ch.gatingMechanism ∧ ch.conductance

theorem ion_channel_closed_from_evidence (ch : IonChannel) (e : IonChannelEvidence ch) :
    IonChannelClosed ch := by
  exact And.intro e.selectivePermeabilityClosed (And.intro e.gatingMechanismClosed e.conductanceClosed)

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse