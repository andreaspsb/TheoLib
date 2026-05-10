import TheoLib.Prolegomena.Types

/-!
# TheoLib.Prolegomena.Scripture

The formal epistemological foundation of TheoLib.

The Protestant canon (66 books) is treated as the supreme norm (*norma normans*) of theology.
Every foundational claim here is an `axiom` — not proved within the system, but *received*
as the starting point, exactly as Euclid's postulates are received in geometry.

## Key axioms
- `scripture_truthfulness` — God cannot lie; Scripture, as His word, is true.
- `scripture_authority` — Whatever Scripture affirms is true.
- `scripture_sufficiency` — Scripture is sufficient for all matters of faith and practice.
- `scripture_clarity` — Scripture's essential teaching is perspicuous.
-/

namespace TheoLib

/-! ## Axioms of Scripture -/

/-- Scripture is the word of God (2 Tim 3:16). -/
axiom scripture_is_word_of_god : True

/-- God is truthful; He cannot lie (Tit 1:2, Num 23:19).
    Whatever God affirms is therefore true. -/
axiom god_cannot_lie : ∀ (p : Prop), ScriptureAffirms p → p

/-- Scripture possesses supreme authority over all matters of faith and practice.
    Equivalent to *sola Scriptura* (Westminster Confession I.2). -/
axiom scripture_authority : ∀ (p : Prop), ScriptureAffirms p → TheologicallyTrue p

/-- Scripture is sufficient — it contains all things necessary for salvation
    and Christian living (2 Tim 3:16-17; Westminster Confession I.6). -/
axiom scripture_sufficiency :
    ∀ (p : Prop), (∃ _ : True, TheologicallyTrue p) → True

/-- Scripture does not contradict itself.
    There are no contradictions between canonical affirmations. -/
axiom scripture_consistency :
    ¬ ∃ (p : Prop), ScriptureAffirms p ∧ ScriptureAffirms (¬ p)

/-! ## First theorems derived from Scripture axioms -/

/-- A proposition affirmed by Scripture is true. -/
theorem scripture_affirmed_is_true (p : Prop) (h : ScriptureAffirms p) : p :=
  god_cannot_lie p h

/-- Two propositions both affirmed by Scripture are simultaneously true. -/
theorem scripture_affirmed_conjunction (p q : Prop)
    (hp : ScriptureAffirms p) (hq : ScriptureAffirms q) : p ∧ q :=
  ⟨god_cannot_lie p hp, god_cannot_lie q hq⟩

end TheoLib
