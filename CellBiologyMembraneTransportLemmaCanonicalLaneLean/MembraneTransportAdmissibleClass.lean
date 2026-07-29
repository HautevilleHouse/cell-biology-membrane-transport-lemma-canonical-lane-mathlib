import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure MembraneTransportAdmittedObject where
  cellMembrane : Type
  transportProtein : Type
  soluteSpecies : Type
  concentrationGradient : Prop
  transportRateEquation : Prop
  conclusion : transportRateEquation

structure AdmissibleClass where
  object : MembraneTransportAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse