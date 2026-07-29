import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure TransportKineticsPackage where
  michaelisMenten : Prop
  maximalVelocity : Prop
  turnoverNumber : Prop
  bindingAffinity : Prop

structure TransportKineticsEvidence (K : TransportKineticsPackage) where
  michaelisMentenClosed : K.michaelisMenten
  maximalVelocityClosed : K.maximalVelocity
  turnoverNumberClosed : K.turnoverNumber
  bindingAffinityClosed : K.bindingAffinity

def TransportKineticsClosed (K : TransportKineticsPackage) : Prop :=
  K.michaelisMenten ∧ K.maximalVelocity ∧ K.turnoverNumber ∧ K.bindingAffinity

theorem transport_kinetics_closed_from_evidence
    (K : TransportKineticsPackage) (e : TransportKineticsEvidence K) :
    TransportKineticsClosed K := by
  exact And.intro e.michaelisMentenClosed
    (And.intro e.maximalVelocityClosed
      (And.intro e.turnoverNumberClosed e.bindingAffinityClosed))

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse