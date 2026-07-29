import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure ElectrochemicalGradientPackage where
  concentrationDifference : Prop
  electricalPotential : Prop
  gibbsFreeEnergy : Prop
  drivingForce : Prop

structure ElectrochemicalGradientEvidence (E : ElectrochemicalGradientPackage) where
  concentrationDifferenceClosed : E.concentrationDifference
  electricalPotentialClosed : E.electricalPotential
  gibbsFreeEnergyClosed : E.gibbsFreeEnergy
  drivingForceClosed : E.drivingForce

def ElectrochemicalGradientClosed (E : ElectrochemicalGradientPackage) : Prop :=
  E.concentrationDifference ∧ E.electricalPotential ∧ E.gibbsFreeEnergy ∧ E.drivingForce

theorem electrochemical_gradient_closed_from_evidence
    (E : ElectrochemicalGradientPackage) (e : ElectrochemicalGradientEvidence E) :
    ElectrochemicalGradientClosed E := by
  exact And.intro e.concentrationDifferenceClosed
    (And.intro e.electricalPotentialClosed
      (And.intro e.gibbsFreeEnergyClosed e.drivingForceClosed))

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse