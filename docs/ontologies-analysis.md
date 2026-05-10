# Ontologias Existentes e TheoLib — Análise de Compatibilidade

*Data: maio de 2026*

---

## 1. O que já existe no mundo

### Formalização de argumentos teológicos em proof assistants

O trabalho mais próximo do TheoLib é o do grupo **Benzmüller–Paleo** (Freie Universität Berlin / Universidade de Luxemburgo), que desde 2013 formaliza o **argumento ontológico de Gödel** em Isabelle/HOL e Coq.

Artigo principal: *"Formalization, Mechanization and Automation of Gödel's Proof of God's Existence"* — arXiv:1308.4526 (131 citações).

| Aspecto | Benzmüller et al. | TheoLib |
|---------|-------------------|---------|
| Ferramenta | Isabelle/HOL, Coq | Lean 4 |
| Escopo | Um argumento filosófico | Teologia sistemática completa |
| Tradição | Filosófico-matemática | Protestante reformada |
| Doutrinas | Só existência de Deus | Trindade, Cristologia, Soteriologia… |

**Conclusão:** Nenhum projeto público formaliza teologia sistemática protestante em Lean 4 ou qualquer proof assistant moderno. TheoLib é pioneiro neste espaço.

---

### Ontologias OWL/RDF para teologia cristã

Busca exaustiva em repositórios públicos e literatura acadêmica revelou:

- **SUMO** (~25 mil termos, 80 mil axiomas) — sem módulo público de religião/teologia
- **CIDOC CRM** (patrimônio cultural) — representa artefatos religiosos, não doutrinas
- **BibFrame** (Library of Congress) — bibliográfico, não teológico
- **Não encontrado:** nenhuma ontologia OWL pública para teologia cristã sistemática, teologia reformada ou conteúdo bíblico estruturado

---

## 2. Seria possível usar ontologias OWL no TheoLib?

**Tecnicamente: sim, mas com altíssimo custo de tradução manual.**

Não existe nenhuma ferramenta de conversão OWL → Lean 4. A única abordagem viável seria tradução manual axioma por axioma, e mesmo assim com perda expressiva, pois os dois formalismos têm naturezas fundamentalmente distintas.

---

## 3. Faria sentido? — A incompatibilidade fundamental

OWL (Description Logic) e Lean 4 (Teoria de Tipos Dependentes) respondem perguntas completamente diferentes:

| | OWL / Description Logic | Lean 4 / Teoria de Tipos |
|--|--|--|
| Pergunta central | "Esta entidade pertence a esta classe?" | "Este teorema tem prova?" |
| Decidibilidade | ✅ Totalmente decidível | ❌ Indecidível em geral |
| Raciocínio | Automático (HermiT, Pellet) | Manual/interativo |
| Expressividade | Subconjunto da lógica de 1ª ordem | Teoria de tipos dependentes (muito mais rica) |

### Exemplo concreto

- OWL *consegue dizer*: "Justificação é uma Doutrina que tem como fundamento a Escritura"
- OWL *não consegue dizer*: "Se um crente está Condenado e Cristo foi ressurreto, então existe um caminho lógico para estar Justificado"

Essa segunda afirmação — exatamente o que TheoLib faz com `ForensicStatus` e a cadeia `Atonement → Justification` — requer **dependências computacionais entre tipos**, que OWL não possui.

**TheoLib já opera num nível mais expressivo do que OWL permite.** Importar OWL seria um *downgrade* de poder formal.

---

## 4. O paradoxo: TheoLib poderia *exportar* para OWL

A direção inversa faz mais sentido:

- TheoLib (Lean 4) → exportar subconjunto das definições → ontologia OWL
- Perda: as provas e dependências lógicas ricas
- Ganho: interoperabilidade com ferramentas da Web Semântica, citabilidade por Wikidata/Schema.org

---

## 5. O que *de fato* faria sentido integrar

Não a estrutura formal das ontologias, mas seus **vocabulários como referência**:

| Recurso | Uso potencial |
|---------|---------------|
| **SUMO** | Nomenclatura de conceitos de alto nível (Entidade, Processo, Atributo) |
| **Wikidata / Schema.org** | Mapear módulos TheoLib a identificadores externos para citabilidade |
| **Lógica de Alta Ordem (HOL)** | Compatível com Lean; usada por Benzmüller — expansão acadêmica futura |
| **Dicionários teológicos** (TDNT, Westminster) | Referência para nomear axiomas com precisão histórica |

---

## 6. Conclusão

> **Não integrar ontologias OWL ao TheoLib.**  
> O projeto já opera num formalismo mais rico. A direção produtiva é continuar construindo em Lean 4 com teoria de tipos, eventualmente publicando resultados que possam ser referenciados pela comunidade de lógica formal e teologia filosófica.
