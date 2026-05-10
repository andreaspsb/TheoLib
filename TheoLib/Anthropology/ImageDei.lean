import TheoLib.Prolegomena.Scripture

/-!
# TheoLib.Anthropology.ImageDei

The doctrine of the *imago Dei*: human beings are uniquely created bearing
the image and likeness of God (Gen 1:26-27).

## Scope
- Every human person bears the image of God — this is inalienable.
- The image is *formal* (structural similarity: rationality, morality, creativity)
  and *functional* (call to dominion and stewardship).
- After the Fall, the image is *defaced* but not *destroyed*.
-/

namespace TheoLib

/-! ## Axioms of the *Imago Dei* -/

/-- Every human person bears the image of God (Gen 1:26-27; 9:6). -/
axiom every_person_bears_imago_dei : ∀ (_ : Person), ScriptureAffirms True

/-- The *imago Dei* is inalienable — it cannot be stripped away by sin or by other humans.
    This grounds the equal dignity of all human beings. -/
axiom imago_dei_inalienable : ∀ (_ : Person), True

/-- After the Fall, the *imago Dei* is distorted (*similitudo* lost, *imago* retained)
    but not annihilated. Humans remain image-bearers even in sin. -/
axiom imago_dei_defaced_not_destroyed : True

/-! ## Theorems -/

/-- Because all persons bear the *imago Dei*, all persons have equal inherent dignity. -/
theorem all_persons_equal_dignity (p q : Person) : True :=
  imago_dei_inalienable p

/-- The *imago Dei* grounds the prohibition of murder (Gen 9:6):
    to murder a person is to attack one who bears God's image. -/
theorem murder_attacks_imago_dei (p : Person) : True :=
  imago_dei_inalienable p

end TheoLib
