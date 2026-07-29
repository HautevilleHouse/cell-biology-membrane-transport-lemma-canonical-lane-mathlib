import HautevilleHouse.CellBiologyMembraneTransportLemmaCanonicalLaneLean.TransportThenClosure
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure TransportSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TransportAdmittedObject where
  space : TransportSpace
  closedMembrane : Prop
  selectivePermeability : Prop
  soluteModel : Type
  concentrationGradient : Prop
  conclusion : concentrationGradient

def TransportWitnessClosed (O : TransportAdmittedObject) : Prop :=
  O.concentrationGradient

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse