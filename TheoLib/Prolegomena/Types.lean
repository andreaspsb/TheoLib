/-!
# TheoLib.Prolegomena.Types

Primitive types (entities) of the theological system.
These are opaque by design — we do not construct them; we reason *about* them.
-/

namespace TheoLib

/-! ## Primitive Entities -/

/-- The divine nature. Not constructively defined; all properties come from axioms. -/
opaque God : Type

/-- A human person, bearing the image of God. -/
structure Person where
  mk ::

/-- A propositional unit of time (a moment, age, or era). -/
structure Time where
  mk ::

/-- A canonical affirmation made by Scripture about a proposition. -/
opaque ScriptureAffirms : Prop → Prop

/-- A proposition is *theologically true* if Scripture affirms it. -/
def TheologicallyTrue (p : Prop) : Prop := ScriptureAffirms p

end TheoLib
