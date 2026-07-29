import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure CellMembraneTransport where
  carrier : Type
  permeability : Prop
  transmembranePotential : Float
  soluteConcentrations : Type

structure AdmittedMembraneObject where
  membrane : CellMembraneTransport
  ionGradient : Prop
  atpDependent : Prop
  transporterType : Type
  activeTransport : Prop
  passiveDiffusion : Prop
  conclusion : activeTransport ∧ passiveDiffusion

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse
