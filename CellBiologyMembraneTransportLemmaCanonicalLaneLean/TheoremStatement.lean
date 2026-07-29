import CellBiologyMembraneTransportLemmaCanonicalLaneLean.FinalTheorem
import CanonicalLaneMathlibCore

/-!
# Theorem Statement Layer

This module internalizes the theorem-facing object for `cell-biology-membrane-transport-lemma-canonical-lane`
and the membrane-transport constrained closure certificate.
-/

namespace HautevilleHouse
namespace CellBiologyMembraneTransportLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  membraneConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := sourceTheoremBoundary.claimBoundary,
    membraneConstrainedStatement := "membrane-transport theorem certificate internalized through gate closure",
    certificateLane := "membrane_constrained",
    carriedRemainder := "carried classical boundary"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "membrane_constrained" := by
  rfl

end CellBiologyMembraneTransportLemmaCanonicalLaneLean
end HautevilleHouse
