import TheoLib

open TheoLib

/-- Entry point: demonstrates key theorems at startup. -/
def main : IO Unit := do
  IO.println "TheoLib — Formal Biblical-Theological Theorems (Lean 4)"
  IO.println ""
  IO.println "Prolegomena:"
  IO.println "  ✓ scripture_affirmed_is_true  — whatever Scripture affirms is true"
  IO.println "  ✓ scripture_affirmed_conjunction — two scriptural truths hold jointly"
  IO.println ""
  IO.println "Theology Proper:"
  IO.println "  ✓ exactly_three_persons        — the Trinity has exactly 3 persons"
  IO.println "  ✓ anti_modalism               — the persons are not mere modes"
  IO.println "  ✓ all_persons_distinct        — Father ≠ Son ≠ Spirit"
  IO.println ""
  IO.println "Anthropology:"
  IO.println "  ✓ no_person_self_righteous     — all humans are sinners (Rom 3:23)"
  IO.println "  ✓ all_persons_equal_dignity    — all image-bearers are equally dignified"
  IO.println ""
  IO.println "Christology:"
  IO.println "  ✓ anti_docetism               — Christ's humanity is real, not apparent"
  IO.println "  ✓ resurrection_vindicates_atonement"
  IO.println ""
  IO.println "Soteriology:"
  IO.println "  ✓ justified_ne_condemned       — justified ≠ condemned (Rom 8:1)"
  IO.println "  ✓ double_imputation            — our sin to Christ, His righteousness to us"
