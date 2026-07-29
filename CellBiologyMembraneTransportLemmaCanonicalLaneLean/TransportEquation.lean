import CellBiologyMembraneTransportLemmaCanonicalLaneLean.GoldmanHodgkinKatz

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure TransportEquationPackage (A : AdmissibleClass) (N : NernstPotentialPackage A)
    (G : GoldmanHodgkinKatzPackage A N) where
  fluxRates : List Float
  netFlux : Float
  transportEquationHolds : Prop
  transportEquationClosed : transportEquationHolds

structure TransportEquationEvidence (A : AdmissibleClass) (N : NernstPotentialPackage A)
    (G : GoldmanHodgkinKatzPackage A N) (T : TransportEquationPackage A N G) where
  transportEquationClosed : T.transportEquationHolds

def TransportEquationClosed (A : AdmissibleClass) (N : NernstPotentialPackage A)
    (G : GoldmanHodgkinKatzPackage A N) (T : TransportEquationPackage A N G) : Prop :=
  T.transportEquationHolds

theorem transport_equation_closed_from_evidence
    (A : AdmissibleClass) (N : NernstPotentialPackage A)
    (G : GoldmanHodgkinKatzPackage A N) (T : TransportEquationPackage A N G)
    (E : TransportEquationEvidence A N G T) : TransportEquationClosed A N G T := by
  exact E.transportEquationClosed

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse
