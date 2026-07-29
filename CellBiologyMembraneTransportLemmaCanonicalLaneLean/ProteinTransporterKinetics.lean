import CellBiologyMembraneTransportLemmaCanonicalLaneLean.ConcentrationGradientDynamics

/-!
# Protein Transporter Kinetics Package
-/

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure ProteinTransporterKineticsPackage where
  bindingAffinity : Prop
  conformationalChangeRate : Prop
  transportCapacity : Prop
  saturationBehavior : Prop

structure ProteinTransporterKineticsEvidence (P : ProteinTransporterKineticsPackage) where
  bindingAffinityClosed : P.bindingAffinity
  conformationalChangeRateClosed : P.conformationalChangeRate
  transportCapacityClosed : P.transportCapacity
  saturationBehaviorClosed : P.saturationBehavior

def ProteinTransporterKineticsClosed (P : ProteinTransporterKineticsPackage) : Prop :=
  P.bindingAffinity ∧ P.conformationalChangeRate ∧ P.transportCapacity ∧ P.saturationBehavior

theorem protein_transporter_kinetics_closed_from_evidence
    (P : ProteinTransporterKineticsPackage) (E : ProteinTransporterKineticsEvidence P) :
    ProteinTransporterKineticsClosed P := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.conformationalChangeRateClosed
      (And.intro E.transportCapacityClosed E.saturationBehaviorClosed))

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse