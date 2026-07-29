import CellBiologyMembraneTransportLemmaCanonicalLaneLean.MembraneTransportAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure NernstPotentialPackage (A : AdmissibleClass) where
  ionValence : Float
  temperature : Float
  faradayConstant : Float
  equilibriumPotential : Float
  nernstEquationHolds : Prop
  nernstEquationClosed : nernstEquationHolds

structure NernstPotentialEvidence (A : AdmissibleClass) (N : NernstPotentialPackage A) where
  nernstEquationClosed : N.nernstEquationHolds

def NernstPotentialClosed (A : AdmissibleClass) (N : NernstPotentialPackage A) : Prop :=
  N.nernstEquationHolds

theorem nernst_potential_closed_from_evidence
    (A : AdmissibleClass) (N : NernstPotentialPackage A)
    (E : NernstPotentialEvidence A N) : NernstPotentialClosed A N := by
  exact E.nernstEquationClosed

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse
