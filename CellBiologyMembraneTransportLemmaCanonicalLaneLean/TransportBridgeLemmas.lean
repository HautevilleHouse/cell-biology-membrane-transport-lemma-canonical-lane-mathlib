import HautevilleHouse.CellBiologyMembraneTransportLemmaCanonicalLaneLean.TransportProjection

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TransportWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse