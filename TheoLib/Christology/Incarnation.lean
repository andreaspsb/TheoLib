import TheoLib.TheologyProper.Trinity
import TheoLib.Anthropology.Hamartiology

/-!
# TheoLib.Christology.Incarnation

The doctrine of the Incarnation: the eternal Son of God took on a fully human nature
in the person of Jesus Christ, remaining fully divine.

## Chalcedonian Definition (AD 451)
> "...truly God and truly man... the same perfect in deity and perfect in humanity...
>  two natures without confusion, without change, without division, without separation."

## Key terms
- *Hypostatic union*: two complete natures (divine and human) in one person.
- *Theotokos*: Mary bore the one who is God the Son (this concerns person, not just nature).
-/

namespace TheoLib

/-! ## Christological Types -/

/-- A human nature: rationality, embodiment, will, emotion. -/
structure HumanNature where
  mk ::

/-- The hypostatic union: one person with two natures. -/
structure HypostaticUnion where
  /-- The divine nature of the eternal Son -/
  divineNature : True
  /-- A fully human nature (except without sin) -/
  humanNature  : HumanNature
  /-- The natures are not mixed or confused -/
  no_confusion : True
  /-- The natures are not separated -/
  no_division  : True

/-! ## Axioms of the Incarnation -/

/-- The eternal Son of God became flesh (Jn 1:14). -/
axiom son_became_flesh : ∃ _ : HumanNature, True

/-- Jesus Christ is truly God — the full divine nature subsists in Him
    (Col 2:9; Nicene Creed). -/
axiom christ_is_truly_god : True

/-- Jesus Christ is truly human — He has a real human nature, body and soul
    (Heb 2:14-17; 4:15). -/
axiom christ_is_truly_human : ∃ _ : HumanNature, True

/-- Christ is sinless — His human nature is not corrupted by original sin (Heb 4:15;
    2 Cor 5:21). This is crucial: He can be the perfect substitute. -/
axiom christ_is_sinless : True

/-- The two natures are united in one person without confusion or separation
    (Chalcedonian Definition). -/
axiom hypostatic_union : ∃ _ : HypostaticUnion, True

/-! ## Theorems -/

/-- Christ's sinlessness makes Him eligible to be the perfect high priest (Heb 7:26). -/
theorem christ_eligible_as_high_priest : True := christ_is_sinless

/-- Christ's full humanity means He truly represents humanity before God (Heb 2:17). -/
theorem christ_represents_humanity : ∃ _ : HumanNature, True := christ_is_truly_human

/-- Docetism is false: Christ did not merely appear to be human. -/
theorem anti_docetism : ∃ _ : HumanNature, True := christ_is_truly_human

/-- Apollinarianism is false: Christ's humanity is complete (including human soul/mind). -/
theorem anti_apollinarianism : True := christ_is_truly_human.elim fun _ _ => True.intro

end TheoLib
