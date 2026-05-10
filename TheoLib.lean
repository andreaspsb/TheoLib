-- Prolegomena
import TheoLib.Prolegomena.Types
import TheoLib.Prolegomena.Scripture

-- Theology Proper
import TheoLib.TheologyProper.Attributes
import TheoLib.TheologyProper.Trinity

-- Anthropology
import TheoLib.Anthropology.ImageDei
import TheoLib.Anthropology.Hamartiology

-- Christology
import TheoLib.Christology.Incarnation
import TheoLib.Christology.Atonement

-- Soteriology
import TheoLib.Soteriology.Justification

/-!
# TheoLib

A formal library of biblical-theological theorems in Lean 4.

Inspired by Mathlib, TheoLib formalizes classical Protestant systematic theology
using the tools of dependent type theory and interactive theorem proving.

## Structure (analogous to Mathlib)
- `Prolegomena`   — foundations: primitive types, Scripture as epistemic norm
- `TheologyProper`— doctrine of God: attributes, Trinity
- `Anthropology`  — human nature: *imago Dei*, sin
- `Christology`   — person and work of Christ: Incarnation, Atonement
- `Soteriology`   — salvation: Justification, Sanctification
-/
