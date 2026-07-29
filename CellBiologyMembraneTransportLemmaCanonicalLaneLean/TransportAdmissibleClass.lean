import HautevilleHouse.CellBiologyMembraneTransportLemmaCanonicalLaneLean.TransportClassAdmitted

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : TransportAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TransportWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse