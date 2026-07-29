import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure PassiveTransportPackage where
  simpleDiffusion : Prop
  facilitatedDiffusion : Prop
  osmosis : Prop
  fickLawApplied : Prop

structure PassiveTransportEvidence (P : PassiveTransportPackage) where
  simpleDiffusionClosed : P.simpleDiffusion
  facilitatedDiffusionClosed : P.facilitatedDiffusion
  osmosisClosed : P.osmosis
  fickLawAppliedClosed : P.fickLawApplied

def PassiveTransportClosed (P : PassiveTransportPackage) : Prop :=
  P.simpleDiffusion ∧ P.facilitatedDiffusion ∧ P.osmosis ∧ P.fickLawApplied

theorem passive_transport_closed_from_evidence
    (P : PassiveTransportPackage) (e : PassiveTransportEvidence P) :
    PassiveTransportClosed P := by
  exact And.intro e.simpleDiffusionClosed
    (And.intro e.facilitatedDiffusionClosed
      (And.intro e.osmosisClosed e.fickLawAppliedClosed))

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse