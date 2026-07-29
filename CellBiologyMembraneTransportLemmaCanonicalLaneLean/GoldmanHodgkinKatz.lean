import CellBiologyMembraneTransportLemmaCanonicalLaneLean.NernstPotential

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure GoldmanHodgkinKatzPackage (A : AdmissibleClass) (N : NernstPotentialPackage A) where
  membranePermeabilities : List Float
  reversalPotential : Float
  ghkEquationHolds : Prop
  ghkEquationClosed : ghkEquationHolds

structure GoldmanHodgkinKatzEvidence (A : AdmissibleClass) (N : NernstPotentialPackage A)
    (G : GoldmanHodgkinKatzPackage A N) where
  ghkEquationClosed : G.ghkEquationHolds

def GoldmanHodgkinKatzClosed (A : AdmissibleClass) (N : NernstPotentialPackage A)
    (G : GoldmanHodgkinKatzPackage A N) : Prop :=
  G.ghkEquationHolds

theorem goldman_hodgkin_katz_closed_from_evidence
    (A : AdmissibleClass) (N : NernstPotentialPackage A)
    (G : GoldmanHodgkinKatzPackage A N)
    (E : GoldmanHodgkinKatzEvidence A N G) : GoldmanHodgkinKatzClosed A N G := by
  exact E.ghkEquationClosed

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse
