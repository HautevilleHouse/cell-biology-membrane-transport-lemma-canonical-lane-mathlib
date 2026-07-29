import CellBiologyMembraneTransportLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : MembraneTransportAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MembraneTransportWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse
