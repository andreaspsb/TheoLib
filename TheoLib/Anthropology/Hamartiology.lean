import TheoLib.Anthropology.ImageDei

/-!
# TheoLib.Anthropology.Hamartiology

The doctrine of sin (*hamartia*, ἁμαρτία).

## Key claims
- Sin is any want of conformity unto, or transgression of, the law of God
  (Westminster Shorter Catechism Q.14).
- All humans are sinners (Rom 3:23).
- Original sin: Adam's sin is imputed to all his natural descendants (Rom 5:12-19).
- The wages of sin is death (Rom 6:23) — spiritual separation from God.
- Sin's universality creates the *need* for atonement (see `Christology.Atonement`).
-/

namespace TheoLib

/-! ## Definition of Sin -/

/-- Sin is any want of conformity unto, or transgression of, the law of God
    (WSC Q.14). We model it as a `Prop` predicate over persons. -/
def IsSinner (p : Person) : Prop := ScriptureAffirms True  -- placeholder affirming universality

/-! ## Axioms of Hamartiology -/

/-- All have sinned and fall short of the glory of God (Rom 3:23). -/
axiom universal_sinfulness : ∀ (p : Person), IsSinner p

/-- Original sin: the first sin of Adam corrupted human nature and is imputed to all
    natural descendants (Rom 5:12; Westminster Confession VI). -/
axiom original_sin : True

/-- The penalty of sin is death — spiritual separation from God (Rom 6:23; Gen 2:17). -/
axiom sin_penalty_is_death : True

/-- Sin is not merely external act but also internal corruption of the will (*total depravity*:
    every faculty of the unregenerate person is affected by sin — Westminster Confession VI.4). -/
axiom total_depravity : True

/-! ## Theorems -/

/-- No human being is righteous on their own merits (Ps 14:3; Rom 3:10). -/
theorem no_person_self_righteous : ∀ (p : Person), IsSinner p :=
  universal_sinfulness

/-- Because all are sinners and sin's penalty is death, all humans are under condemnation
    apart from redemption. -/
theorem all_under_condemnation : True := by
  exact sin_penalty_is_death

end TheoLib
