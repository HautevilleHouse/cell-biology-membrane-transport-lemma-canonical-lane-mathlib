import CellBiologyMembraneTransportLemmaCanonicalLaneLean.ProteinTransporterKinetics

/-!
# Electrochemical Gradient Coupling Package
-/

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure ElectrochemicalGradientCouplingPackage where
  membranePotential : Prop
  ionGradient : Prop
  coupledTransportStoichiometry : Prop
  energySourceIdentified : Prop

structure ElectrochemicalGradientCouplingEvidence (E : ElectrochemicalGradientCouplingPackage) where
  membranePotentialClosed : E.membranePotential
  ionGradientClosed : E.ionGradient
  coupledTransportStoichiometryClosed : E.coupledTransportStoichiometry
  energySourceIdentifiedClosed : E.energySourceIdentified

def ElectrochemicalGradientCouplingClosed (E : ElectrochemicalGradientCouplingPackage) : Prop :=
  E.membranePotential ∧ E.ionGradient ∧ E.coupledTransportStoichiometry ∧ E.energySourceIdentified

theorem electrochemical_gradient_coupling_closed_from_evidence
    (E : ElectrochemicalGradientCouplingPackage) (Ev : ElectrochemicalGradientCouplingEvidence E) :
    ElectrochemicalGradientCouplingClosed E := by
  exact And.intro Ev.membranePotentialClosed
    (And.intro Ev.ionGradientClosed
      (And.intro Ev.coupledTransportStoichiometryClosed Ev.energySourceIdentifiedClosed))

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse