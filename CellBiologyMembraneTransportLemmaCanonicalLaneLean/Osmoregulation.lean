import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure Osmoregulation where
  osmoticPressure : Float
  cellVolume : Float
  aquaporins : Prop
  ionTransporters : Type
  regulatoryVolumeDecrease : Prop
  regulatoryVolumeIncrease : Prop

structure OsmoregulationEvidence (O : Osmoregulation) where
  osmoticPressureClosed : O.osmoticPressure > 0
  cellVolumeClosed : O.cellVolume > 0
  aquaporinsClosed : O.aquaporins
  regulatoryVolumeDecreaseClosed : O.regulatoryVolumeDecrease
  regulatoryVolumeIncreaseClosed : O.regulatoryVolumeIncrease

def OsmoregulationClosed (O : Osmoregulation) : Prop :=
  O.osmoticPressure > 0 ∧ O.cellVolume > 0 ∧ O.aquaporins ∧ O.regulatoryVolumeDecrease ∧ O.regulatoryVolumeIncrease

theorem osmoregulation_closed_from_evidence (O : Osmoregulation) (Ev : OsmoregulationEvidence O) : OsmoregulationClosed O := by
  exact And.intro Ev.osmoticPressureClosed (And.intro Ev.cellVolumeClosed (And.intro Ev.aquaporinsClosed (And.intro Ev.regulatoryVolumeDecreaseClosed Ev.regulatoryVolumeIncreaseClosed)))

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse
