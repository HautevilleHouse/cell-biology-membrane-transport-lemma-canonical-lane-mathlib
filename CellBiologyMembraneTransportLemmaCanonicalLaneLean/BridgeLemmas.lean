import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MembraneTransportWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse
