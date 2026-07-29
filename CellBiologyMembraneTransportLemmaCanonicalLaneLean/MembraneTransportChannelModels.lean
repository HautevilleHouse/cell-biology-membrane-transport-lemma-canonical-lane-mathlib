import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure MembraneChannel where
  channelType : Type u
  selectivity : Prop
  gatingMechanism : Prop
  conductance : Prop

structure IonConcentrationGradient where
  ionSpecies : Type v
  extracellularConcentration : Nat
  intracellularConcentration : Nat
  gradientDirection : Prop

structure MembraneTransportAdmittedObject where
  channel : MembraneChannel
  gradient : IonConcentrationGradient
  transportDirection : Prop
  activeTransport : Prop
  passiveTransport : Prop
  electrochemicalDrivingForce : Prop
  conclusion : electrochemicalDrivingForce

def MembraneTransportWitnessClosed (O : MembraneTransportAdmittedObject) : Prop :=
  O.electrochemicalDrivingForce

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse
