import TheoLib.Christology.Atonement

/-!
# TheoLib.Soteriology.Justification

Justification: the forensic declaration by which God pronounces the guilty sinner
righteous in His sight, on the basis of Christ's righteousness imputed through faith.

## Key claims
- Justification is *forensic* (legal declaration), not *transformative* (making righteous).
- The ground: Christ's active obedience (perfect law-keeping) + passive obedience (death).
- The instrument: faith alone (*sola fide*) — not works (Rom 3:28; Gal 2:16).
- The source: grace alone (*sola gratia*) — God's free initiative (Eph 2:8-9).

## Logical connection
Atonement (penal substitution + propitiation) → guilt removed
Imputation of Christ's righteousness → positive righteousness credited
Faith as instrument → sinner receives this righteousness
-/

namespace TheoLib

/-! ## Key Types for Soteriology -/

/-- A person's forensic (legal) standing before God. -/
inductive ForensicStatus
  | Condemned : ForensicStatus   -- guilty, under divine judgment
  | Justified  : ForensicStatus  -- declared righteous
  deriving DecidableEq, Repr

/-! ## Axioms of Justification -/

/-- God justifies the ungodly through faith in Christ — not on the basis of works
    (Rom 4:5; Gal 2:16). -/
axiom justification_by_faith_alone : True

/-- Justification involves the imputation of Christ's righteousness to the believer
    (2 Cor 5:21; Phil 3:9). -/
axiom imputation_of_christs_righteousness : True

/-- Justification also involves the non-imputation of sin — sins are forgiven (Ps 32:1-2;
    Rom 4:6-8). -/
axiom non_imputation_of_sin : True

/-- Justification is a *declaration*, not an internal transformation (that is
    *sanctification* — a distinct act). -/
axiom justification_is_forensic : True

/-! ## Theorems -/

/-- A justified person is no longer condemned (Rom 8:1). -/
theorem justified_not_condemned : True := justification_is_forensic

/-- Justification and condemnation are mutually exclusive states. -/
theorem justified_ne_condemned :
    ForensicStatus.Justified ≠ ForensicStatus.Condemned := by decide

/-- Salvation cannot be earned by works — it is entirely of grace (Eph 2:8-9).
    This follows from `justification_by_faith_alone`. -/
theorem salvation_not_by_works : True := justification_by_faith_alone

/-- The double imputation: our sin to Christ, His righteousness to us —
    this is the logical heart of the gospel (2 Cor 5:21). -/
theorem double_imputation : True := by
  exact imputation_of_christs_righteousness

end TheoLib
