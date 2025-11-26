---
fm_version: "1.0.1"
fm_build: "2025-11-26T20:00:00Z"
fm_version_comment: "Initial creation of Knowledge Management in IT KNIFE entry"
id: "K000093"
guid: "746d13e7-6869-4708-b604-74178e3f38f0"
dao: "knife"
title: "K000093 – Knowledge Management in IT"
description: "Prehľad princípov a praktík riadenia znalostí v IT – ako efektívne zachytávať, organizovať a zdieľať know-how v technologických tímoch."
author: "Roman Kazička"
authors: ["Roman Kazička"]
category: "methodology"
type: "guide"
priority: "medium"
tags: ["KNIFE", "knowledge-management", "IT", "documentation", "best-practices"]
locale: "sk"
created: "2025-11-26"
modified: "2025-11-26"
status: "draft"
privacy: "public"
rights_holder_content: "Roman Kazička"
rights_holder_system: "Roman Kazička (CAA/KNIFE/LetItGrow)"
license: "CC-BY-NC-SA-4.0"
disclaimer: "Use at your own risk. Methods provided as-is; participation is voluntary and context-aware."
copyright: "© 2025 Roman Kazička / SystemThinking"
origin_repo: ""
origin_repo_url: ""
origin_commit: ""
origin_system: ""
author_id: ""
author_did: ""
fm_reserved1: ""
fm_reserved2: ""
date: "2025-11-26"
sidebar_position: "93"
sidebar_label: "K000093 – Knowledge Management in IT"
---

<!-- body:start -->

<!-- nav:knifes -->
> [⬅ KNIFES – Prehľad](../knifes_overview/KNIFE_Overview_Blog.md) • [Zoznam](../knifes_overview/KNIFE_Overview_List.md) • [Detaily](../knifes_overview/KNIFE_Overview_Details.md)

---
# KNIFE K000093 – Knowledge Management in IT

<!-- fm-visible: start -->
> **GUID:** `746d13e7-6869-4708-b604-74178e3f38f0`
> **Status:** `draft` · **Author:** Roman Kazička · **License:** CC-BY-NC-SA-4.0
<!-- fm-visible: end -->

## 🎯 Čo rieši (účel, cieľ)

Knowledge Management (KM) v IT rieši problém **straty znalostí** v technologických tímoch a organizáciách. Keď odíde skúsený vývojár, architekt alebo DevOps špecialista, často odchádza aj kritické know-how, ktoré nie je nikde zdokumentované.

**Hlavné problémy, ktoré KM rieši:**
- 🔄 Opakované riešenie rovnakých problémov
- 📉 Strata produktivity pri onboardingu nových členov tímu
- 🚧 Závislosť na "knowledge silos" (jednotlivcoch, ktorí majú všetky znalosti)
- 📚 Neaktuálna alebo neexistujúca dokumentácia
- 🔍 Ťažkosti pri vyhľadávaní relevantných informácií

## 🧩 Ako to rieši (princíp)

Knowledge Management v IT využíva kombináciu **procesov, nástrojov a kultúry** na zachytávanie a zdieľanie znalostí.

### Tri piliere KM v IT

```
┌─────────────────────────────────────────────────────────┐
│                 KNOWLEDGE MANAGEMENT                     │
├─────────────────┬─────────────────┬─────────────────────┤
│    📝 PROCESY   │   🛠️ NÁSTROJE  │    👥 KULTÚRA       │
├─────────────────┼─────────────────┼─────────────────────┤
│ • Dokumentácia  │ • Wiki systémy  │ • Zdieľanie         │
│ • Code review   │ • Git repos     │ • Mentoring         │
│ • Retrospektívy │ • Slack/Teams   │ • Učiaca sa org.    │
│ • Pair prog.    │ • Confluence    │ • Psychol. bezpečie │
│ • ADR           │ • Notion/Obsid. │ • Uznanie prínosov  │
└─────────────────┴─────────────────┴─────────────────────┘
```

### SECI Model (Nonaka & Takeuchi)

Základný model pre transformáciu znalostí:

| Z/Na | Tacitné (skúsenostné) | Explicitné (dokumentované) |
|------|----------------------|---------------------------|
| **Tacitné** | **Socializácia** (pair programming, mentoring) | **Externalizácia** (písanie dokumentácie, ADR) |
| **Explicitné** | **Internalizácia** (čítanie docs, learning) | **Kombinácia** (agregácia, wiki, databázy) |

## 🧪 Ako to použiť (aplikácia)

### 1. Architecture Decision Records (ADR)

Zachytávajte **prečo** boli urobené technické rozhodnutia:

```markdown
# ADR-001: Výber PostgreSQL ako primárnej databázy

## Status
Accepted

## Context
Potrebujeme databázu pre nový mikroservis...

## Decision
Zvolili sme PostgreSQL pretože...

## Consequences
- ✅ ACID compliance
- ✅ JSON podpora
- ⚠️ Potrebný DBA pre škálovanie
```

### 2. Runbooks a Playbooks

Pre operačné tímy a DevOps:

```yaml
# runbook-database-recovery.yaml
name: Database Recovery
trigger: "Production DB unresponsive"
steps:
  - action: "Check DB status"
    command: "pg_isready -h $DB_HOST"
  - action: "Restart if needed"
    command: "systemctl restart postgresql"
```

### 3. Documentation as Code

Dokumentácia v rovnakom repo ako kód:

```
project/
├── src/
│   └── ...
├── docs/
│   ├── architecture/
│   │   ├── ADR-001-database.md
│   │   └── diagrams/
│   ├── runbooks/
│   └── onboarding/
└── README.md
```

---

## ⚡ Rýchly návod (Top)

**5 krokov pre zavedenie KM v tíme:**

1. 📋 **Audit** – Zistite, aké znalosti existujú a kde sú "knowledge silos"
2. 🛠️ **Nástroje** – Vyberte platformu (Wiki, Git, Notion)
3. 📝 **Šablóny** – Vytvorte templates pre bežné typy dokumentov
4. 🔄 **Procesy** – Zabudujte dokumentáciu do workflow (PR reviews)
5. 🏆 **Kultúra** – Oceňujte a odmeny zdieľanie znalostí

## 📜 Detailný článok

### Typy znalostí v IT

| Typ | Popis | Príklad | Spôsob zachytenia |
|-----|-------|---------|-------------------|
| **Tacitné** | Skúsenostné, ťažko artikulovateľné | "Viem, že tento bug sa objaví pri..." | Pair programming, shadowing |
| **Explicitné** | Formalizované, dokumentované | API dokumentácia | Wiki, Docs, README |
| **Procedurálne** | Ako niečo urobiť | Deployment proces | Runbooks, skripts |
| **Deklaratívne** | Fakty a dáta | Konfigurácia systému | Config files, ADR |

### Nástroje pre KM v IT

#### Dokumentačné systémy
- **Confluence** – Enterprise wiki, integrácia s Jira
- **Notion** – Flexibilná databáza + dokumenty
- **GitBook** – Dokumentácia ako kód
- **Docusaurus** – Static site generator pre docs

#### Knowledge bases
- **Stack Overflow for Teams** – Q&A formát
- **Guru** – Knowledge cards s verifikáciou
- **Slite** – Team knowledge base

#### Code-centric
- **GitHub Discussions** – Q&A pri repo
- **Inline comments** – Komentáre v kóde
- **Swagger/OpenAPI** – API dokumentácia

### Anti-patterny v KM

❌ **Documentation Graveyard** – Docs, ktoré nikto nečíta ani neaktualizuje

❌ **Knowledge Hoarding** – Jednotlivci si "strážia" svoje znalosti

❌ **Copy-Paste Culture** – Riešenia sa kopírujú bez porozumenia

❌ **Oral Tradition** – Všetko sa predáva iba ústne

### Metriky úspešnosti KM

- 📊 **Čas onboardingu** – Ako rýchlo sa nový člen stane produktívnym
- 🔍 **Findability score** – Ako rýchlo ľudia nájdu čo potrebujú
- 📝 **Documentation coverage** – % kritických systémov s aktuálnou doc
- 🔄 **Knowledge reuse** – Koľkokrát sa existujúce riešenia znovu použijú

## 💡 Tipy a poznámky

### Best Practices

✅ **Write for your future self** – Píšte dokumentáciu tak, akoby ste ju mali čítať o rok

✅ **Link, don't duplicate** – Odkazujte na existujúce docs namiesto kopírovania

✅ **Review docs like code** – Dokumentácia by mala prechádzať review procesom

✅ **Automate where possible** – Generujte docs z kódu (OpenAPI, TypeDoc)

✅ **Keep it close to code** – Čím bližšie k kódu, tým väčšia šanca na aktualizáciu

### Praktické tipy

💡 Vytvorte **"15-minute docs"** pravidlo – Ak niečo trvá viac ako 15 minút vysvetliť, zdokumentujte to

💡 Zavedite **Documentation Friday** – Posledný piatok v mesiaci na aktualizáciu docs

💡 Používajte **templates** – Znižuje bariéru pre písanie

💡 Pripojte **screenshots a diagramy** – Vizuálne informácie sú zapamätateľnejšie

## ✅ Hodnota / Zhrnutie

**Knowledge Management v IT nie je luxus, ale nevyhnutnosť** pre moderné technologické tímy. Správne implementovaný KM systém:

- 🚀 **Zrýchľuje onboarding** – Noví členovia sú produktívni skôr
- 🛡️ **Znižuje riziká** – Znalosti nie sú viazané na jednotlivcov
- 💰 **Šetrí čas a peniaze** – Menej opakovaného riešenia problémov
- 🎯 **Zvyšuje kvalitu** – Zdokumentované best practices sa konzistentne používajú
- 🧠 **Buduje učiacu sa organizáciu** – Kontinuálne zlepšovanie

> *"The only thing worse than training your employees and having them leave is not training them and having them stay."* – Henry Ford

---

### Súvisiace KNIFE záznamy

- [K000027 – Git for Dummies](../K000027-git-for-dummies-central-concepts/index.md) – Základy verzionovania
- [K000031 – Document as Code](../K000031-document-as-code-framework/index.md) – Dokumentácia ako kód
- [K000041 – GitHub Education Framework](../K000041-github-education-framework/index.md) – Vzdelávací framework
- [K000092 – KNIFE User Guide](../K000092-KNIFE-User-Guide/index.md) – Ako používať KNIFE framework

### Externé zdroje

- [Write the Docs](https://www.writethedocs.org/) – Komunita pre dokumentáciu
- [Documentation System](https://documentation.divio.com/) – Divio dokumentačný systém
- [ADR GitHub](https://adr.github.io/) – Architecture Decision Records
