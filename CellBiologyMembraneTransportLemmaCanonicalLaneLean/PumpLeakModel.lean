import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

structure PumpLeakDynamics where
  pumpRate : Float
  leakRate : Float
  ionConcentration : Float
  atpSupply : Float
  steadyStateCondition : Prop

structure PumpLeakEvidence (P : PumpLeakDynamics) where
  pumpRateClosed : P.pumpRate > 0
  leakRateClosed : P.leakRate > 0
  ionConcentrationClosed : P.ionConcentration ≥ 0
  atpSupplyClosed : P.atpSupply > 0
  steadyStateConditionClosed : P.steadyStateCondition

def PumpLeakModelClosed (P : PumpLeakDynamics) : Prop :=
  P.pumpRate > 0 ∧ P.leakRate > 0 ∧ P.ionConcentration ≥ 0 ∧ P.atpSupply > 0 ∧ P.steadyStateCondition

theorem pump_leak_model_closed_from_evidence (P : PumpLeakDynamics) (E : PumpLeakEvidence P) : PumpLeakModelClosed P := by
  exact And.intro E.pumpRateClosed (And.intro E.leakRateClosed (And.intro E.ionConcentrationClosed (And.intro E.atpSupplyClosed E.steadyStateConditionClosed)))

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse
