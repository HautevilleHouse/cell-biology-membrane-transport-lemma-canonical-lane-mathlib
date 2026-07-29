import CellBiologyMembraneTransportLemmaCanonicalLaneLean.MembraneTransportAdmissibleClass

/-!
# Concentration Gradient Dynamics Package
-/

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure ConcentrationGradientDynamicsPackage where
  concentrationDifference : Prop
  diffusionDrivenFlux : Prop
  activeTransportCoupling : Prop
  steadyStateReached : Prop

structure ConcentrationGradientDynamicsEvidence (C : ConcentrationGradientDynamicsPackage) where
  concentrationDifferenceClosed : C.concentrationDifference
  diffusionDrivenFluxClosed : C.diffusionDrivenFlux
  activeTransportCouplingClosed : C.activeTransportCoupling
  steadyStateReachedClosed : C.steadyStateReached

def ConcentrationGradientDynamicsClosed (C : ConcentrationGradientDynamicsPackage) : Prop :=
  C.concentrationDifference ∧ C.diffusionDrivenFlux ∧ C.activeTransportCoupling ∧ C.steadyStateReached

theorem concentration_gradient_dynamics_closed_from_evidence
    (C : ConcentrationGradientDynamicsPackage) (E : ConcentrationGradientDynamicsEvidence C) :
    ConcentrationGradientDynamicsClosed C := by
  exact And.intro E.concentrationDifferenceClosed
    (And.intro E.diffusionDrivenFluxClosed
      (And.intro E.activeTransportCouplingClosed E.steadyStateReachedClosed))

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse