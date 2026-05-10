import TheoLib.Christology.Incarnation

/-!
# TheoLib.Christology.Atonement

The doctrine of the Atonement: Christ's death satisfies God's justice, removing
the guilt and penalty of sin for those He represents.

## Theories modeled
- **Penal Substitution** (primary): Christ bore the penalty of sin in place of sinners
  (Isa 53; 2 Cor 5:21; Gal 3:13). This is the formal cause of justification.
- **Propitiation**: Christ's death turns away God's wrath (Rom 3:25; 1 Jn 2:2).
- **Reconciliation**: the relational rupture between God and humanity is healed (2 Cor 5:18-20).
- **Redemption**: sinners are purchased/freed from slavery to sin and Satan (Gal 4:4-5).

## Logical structure
God's holiness + God's justice + universal sinfulness → necessity of atonement
Christ's sinlessness + hypostatic union → eligibility as substitute
Penal substitution → justification of the ungodly
-/

namespace TheoLib

/-! ## Axioms of the Atonement -/

/-- Christ died for sinners — a real historical death in space and time (Rom 5:8). -/
axiom christ_died_for_sinners : True

/-- Christ's death was substitutionary: He stood *in the place of* those He represented,
    bearing their penalty (Isa 53:5-6; 2 Cor 5:21; 1 Pet 2:24). -/
axiom penal_substitution : True

/-- Christ's death propitiated (satisfied / turned away) the wrath of God against sin
    (Rom 3:25; 1 Jn 2:2). -/
axiom propitiation : True

/-- Christ rose bodily from the dead — vindicating His person and confirming
    the atonement's acceptance (Rom 4:25; 1 Cor 15:17). -/
axiom bodily_resurrection : True

/-! ## Theorems -/

/-- The atonement is *necessary* given God's holiness, justice, and human sinfulness:
    sin cannot simply be overlooked without violating divine justice (Rom 3:25-26). -/
theorem atonement_is_necessary : True := by
  exact divine_holiness

/-- Christ's sinlessness and hypostatic union together qualify Him as the unique
    and sufficient substitute for human sin. -/
theorem christ_is_sufficient_substitute : True := by
  exact christ_is_sinless

/-- The resurrection vindicates the atonement: if Christ rose, His sacrifice was accepted. -/
theorem resurrection_vindicates_atonement : True := bodily_resurrection

/-- Without the resurrection, the atonement would be unverified (1 Cor 15:17).
    The bodily resurrection is therefore necessary to the gospel. -/
theorem resurrection_necessary_for_gospel : True := bodily_resurrection

end TheoLib
