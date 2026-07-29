import HautevilleHouse.CellBiologyMembraneTransportLemmaCanonicalLaneLean.TransportAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure MembraneTransportEndgameState where
  object : TransportAdmittedObject

def transportProjection : Projection MembraneTransportEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem transport_projection_idempotent (x : MembraneTransportEndgameState) :
    transportProjection.toFun (transportProjection.toFun x) = transportProjection.toFun x := by
  exact transportProjection.idempotent x

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse