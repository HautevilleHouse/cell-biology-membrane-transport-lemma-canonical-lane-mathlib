import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure ActiveTransportPackage where
  atpHydrolysis : Prop
  conformationalChange : Prop
  ionPumping : Prop
  couplingStoichiometry : Prop

structure ActiveTransportEvidence (A : ActiveTransportPackage) where
  atpHydrolysisClosed : A.atpHydrolysis
  conformationalChangeClosed : A.conformationalChange
  ionPumpingClosed : A.ionPumping
  couplingStoichiometryClosed : A.couplingStoichiometry

def ActiveTransportClosed (A : ActiveTransportPackage) : Prop :=
  A.atpHydrolysis ∧ A.conformationalChange ∧ A.ionPumping ∧ A.couplingStoichiometry

theorem active_transport_closed_from_evidence
    (A : ActiveTransportPackage) (e : ActiveTransportEvidence A) :
    ActiveTransportClosed A := by
  exact And.intro e.atpHydrolysisClosed
    (And.intro e.conformationalChangeClosed
      (And.intro e.ionPumpingClosed e.couplingStoichiometryClosed))

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse