# TheoLib

> **Uma biblioteca de teologia sistemática formalizada em Lean 4.**  
> Análoga à Mathlib, mas para a teologia protestante clássica — axiomas bíblicos, teoremas doutrinários, verificados mecanicamente pelo kernel do Lean.

[![Lean 4](https://img.shields.io/badge/Lean-v4.29.1-blue)](https://lean-lang.org)
[![Mathlib](https://img.shields.io/badge/Mathlib-v4.29.1-green)](https://github.com/leanprover-community/mathlib4)

---

## Visão Geral

TheoLib formaliza a teologia sistemática protestante clássica (Confissão de Westminster, Credos Niceno e Calcedônio) usando teoria de tipos dependentes e prova interativa.

A estrutura segue três camadas:

1. **Tipos opacos** — entidades ontológicas primitivas (`God`, `Person`, `Time`)
2. **Axiomas** — postulados bíblicos (`axiom`) que não são provados, apenas declarados
3. **Teoremas** — doutrinas derivadas (`theorem`) verificadas pelo kernel do Lean

## Estrutura de Módulos

```
TheoLib/
├── Prolegomena/
│   ├── Types.lean          -- Tipos primitivos: God, Person, Time, ScriptureAffirms
│   └── Scripture.lean      -- Sola Scriptura: autoridade, suficiência, consistência
├── TheologyProper/
│   ├── Attributes.lean     -- Atributos divinos: onisciência, santidade, imutabilidade, eternidade
│   └── Trinity.lean        -- Trindade: DivinePerson (Father | Son | Spirit), theoremas de distinção
├── Anthropology/
│   ├── ImageDei.lean       -- Imago Dei: dignidade inalienável, igualdade entre pessoas
│   └── Hamartiology.lean   -- Doutrina do pecado: universalidade, pecado original, depravação total
├── Christology/
│   ├── Incarnation.lean    -- União Hipostática: HumanNature, HypostaticUnion, Calcedônia
│   └── Atonement.lean      -- Expiação: substituição penal, propiciação, ressurreição
└── Soteriology/
    └── Justification.lean  -- Justificação: ForensicStatus, sola fide, dupla imputação
```

## Exemplos de Código

### Trindade — distinção de pessoas provada por `decide`

```lean
inductive DivinePerson : Type
  | Father : DivinePerson
  | Son    : DivinePerson
  | Spirit : DivinePerson
  deriving DecidableEq, Repr

theorem father_ne_son : DivinePerson.Father ≠ DivinePerson.Son := by decide
theorem anti_modalism : DivinePerson.Father ≠ DivinePerson.Son := father_ne_son
theorem exactly_three_persons :
    [DivinePerson.Father, DivinePerson.Son, DivinePerson.Spirit].length = 3 := by rfl
```

### Justificação — status forense verificado mecanicamente

```lean
inductive ForensicStatus
  | Condemned : ForensicStatus
  | Justified  : ForensicStatus
  deriving DecidableEq

theorem justified_ne_condemned : ForensicStatus.Justified ≠ ForensicStatus.Condemned := by decide
```

### Axioma bíblico (Sola Scriptura)

```lean
/-- Scripture, as the Word of God, carries divine authority in all that it affirms.
    (2 Tim 3:16-17; 2 Pet 1:20-21) -/
axiom scripture_authority : ∀ (p : Prop), ScriptureAffirms p → TheologicallyTrue p
```

## Dependências

| Dependência | Versão  | Uso |
|-------------|---------|-----|
| Lean 4      | v4.29.1 | Linguagem principal |
| Mathlib4    | v4.29.1 | Táticas, `decide`, tipos auxiliares |

## Build

```bash
# Instalar elan (gerenciador de toolchains Lean)
curl https://elan.lean-lang.org/elan-init.sh -sSf | sh

# Clonar e construir
git clone https://github.com/andreaspsb/TheoLib
cd TheoLib
lake update   # baixa Mathlib (~8000 oleans em cache)
lake build TheoLib
```

Build esperado: `Build completed successfully (12 jobs)`.

## Fundação Teológica

TheoLib segue a tradição protestante clássica conforme:

- **Sola Scriptura** — a Bíblia como norma epistêmica suprema (axioma fundacional)
- **Credo Niceno-Constantinopolitano (381)** — Trindade consubstancial
- **Definição de Calcedônia (451)** — duas naturezas, uma pessoa em Cristo
- **Confissão de Westminster (1646)** — sumário doutrinário reformado

## Roteiro (Roadmap)

- [ ] `Soteriology.Sanctification` — santificação, crescimento em graça
- [ ] `Soteriology.Glorification` — glorificação, estado final
- [ ] `Eschatology` — ressurreição, julgamento, vida eterna
- [ ] `Ecclesiology` — doutrina da Igreja, sacramentos
- [ ] `Pneumatology` — doutrina do Espírito Santo
- [ ] Substituir axiomas-placeholder (`True`) por proposições ricas com tipos expressivos
- [ ] Integrar com Mathlib `Order`, `Set`, `Logic` para modelagem mais sofisticada

## Licença

MIT — use livremente para estudo, pesquisa teológica e projetos derivados.