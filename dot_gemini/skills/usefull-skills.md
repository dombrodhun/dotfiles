# Übersicht nützlicher KI-Skills (Useful Skills)

Diese Datei enthält die geplante Übersicht und Beschreibungen für nützliche KI-Skills (reine Instruktions- und Workflow-Skills für `SKILL.md`, ohne externe MCP-Server).

---

## 1. Bereits existierende Skills

* **`code-reviewer`** ([SKILL.md](file:///home/dominik/.gemini/skills/code-reviewer/SKILL.md))
  * **Fokus:** Strukturierte Code-Review-Analyse (Security, Performance, Type-Safety, Clean Code) mit nummerierten Berichten in `agents/reviews/` und Fehler-Statusverwaltung.
* **`skill-creator`** ([SKILL.md](file:///home/dominik/.gemini/skills/skill-creator/SKILL.md))
  * **Fokus:** Erstellung, Validierung und Strukturierung neuer Agent-Skills gemäß dem Agent-Skills-Standard.
* **`requirements-engineering`** ([SKILL.md](file:///home/dominik/.gemini/skills/requirements-engineering/SKILL.md))
  * **Fokus:** Erfassung, Klärung und Dokumentation von funktionellen und nicht-funktionellen Anforderungen, User Stories und Akzeptanzkriterien.
* **`refactoring`** ([SKILL.md](file:///home/dominik/.gemini/skills/refactoring/SKILL.md))
  * **Fokus:** Sichere, verhaltensneutrale und strukturierte Überarbeitung bestehender Codebasen nach KISS- und DRY-Prinzipien.

---

## 2. Kern-Entwicklungs-Skills (Core Development Lifecycle)

### 🎯 `/project-manager` (`project-manager`) — [Erstellt](file:///home/dominik/.gemini/skills/project-manager/SKILL.md)

* **Ziel:** Strategische Projektleitung, Meilensteinplanung, Fortschritts-Tracking und Koordination von Arbeitspaketen.
* **Aufgaben & Workflow:**
  * Gesamtanalyse des Projekts und Unterteilung in Meilensteine (Phasen).
  * Strukturierung von Epics/Tasks und Zuweisung von Fach-Skills.
  * Zwingende Erstellung und kontinuierliche Pflege der zentralen `ROADMAP.md` im Ordner `./agents/`.

### 📋 `/requirements-engineering` (`requirements-engineering`) — [Erstellt](file:///home/dominik/.gemini/skills/requirements-engineering/SKILL.md)

* **Ziel:** Erfassung, Klärung und Dokumentation von funktionellen und nicht-funktionellen Anforderungen.
* **Aufgaben & Workflow:**
  * Strukturierung von User Stories, Akzeptanzkriterien und Edge Cases.
  * Identifikation von Lücken, Mehrdeutigkeiten und impliziten Annahmen.
  * Erstellung von Fachkonzepten und User-Flow-Spezifikationen.

### 🔄 `/refactoring` (`refactoring`) — [Erstellt](file:///home/dominik/.gemini/skills/refactoring/SKILL.md)

* **Ziel:** Sichere und nachhaltige Überarbeitung bestehender Codebasen ohne Verhaltensänderung.
* **Aufgaben & Workflow:**
  * Anwendung von Entwurfsmustern (Design Patterns) und KISS/DRY-Prinzipien.
  * Auflösung von "Code Smells" und hoher zyklomatischer Komplexität.
  * Absicherung durch automatisierte Tests vor und nach dem Refactoring.

### 🏗️ `/architecture-design` (`architecture-design`) — [Erstellt](file:///home/dominik/.gemini/skills/architecture-design/SKILL.md)

* **Ziel:** Entwurf und Dokumentation robuster Systemarchitekturen, Schnittstellen, Datenmodelle und ADRs im Ordner `./agents/`.
* **Aufgaben & Workflow:**
  * Definition von Modulgrenzen, APIs und Datenflüssen.
  * Erstellung von Mermaid-Diagrammen (C4, Sequenz- und ER-Diagramme).
  * Verfassung von Architecture Decision Records (ADRs).
  * Zwingende Ausgabe einer eindeutigen `.md`-Datei im Ordner `./agents/` im Projekt-Root (z. B. `./agents/ARCHITECTURE.md`).

### 🐛 `/bug-fixer` (`bug-fixer`) — [Erstellt](file:///home/dominik/.gemini/skills/bug-fixer/SKILL.md)

* **Ziel:** Systematische Fehleranalyse und nachhaltige Ursachenbehebung (Root Cause Analysis).
* **Aufgaben & Workflow:**
  * Auswertung von Traces, Logfiles und Fehlermeldungen.
  * Erstellung eines minimal reproduzierbaren Testfalls (Regressionstest).
  * Gezielte Behebung der Ursache (keine Symptombekämpfung).

### 🧪 `/test-engineer` (`test-engineer`) — [Erstellt](file:///home/dominik/.gemini/skills/test-engineer/SKILL.md)

* **Ziel:** Konzeption und Erstellung umfassender Testsuiten.
* **Aufgaben & Workflow:**
  * Generierung von Unit-Tests, Integrationstests und E2E-Tests.
  * Mocking & Stubbing von externen Abhängigkeiten.
  * Analyse und Optimierung der Testabdeckung (Coverage).

---

## 3. Spezialisierte Frontend-, UI & Daten-Skills

### 🎨 `/frontend-design` (`frontend-design`) — [Erstellt](file:///home/dominik/.gemini/skills/frontend-design/SKILL.md)

* **Ziel:** Entwurf und Umsetzung moderner, visueller UI/UX-Komponenten und Layouts.
* **Aufgaben & Workflow:**
  * Erstellung von responsiven Layouts, CSS-Variablen, Farbschemata und Typografie.
  * Implementation von Smooth Animations, Glassmorphism und Dark-Mode-Support.
  * Vermeidung von Platzhaltern durch direkte visuelle Demonstration.

### ✍️ `/copywriter` (`copywriter`) — [Erstellt](file:///home/dominik/.gemini/skills/copywriter/SKILL.md)

* **Ziel:** Formulierung von UX-Microcopy, Landingpage- & Produkt-Texten sowie Einhaltung der Brand Voice.
* **Aufgaben & Workflow:**
  * Erstellung von lösungsorientierten Fehlermeldungen, Button-CTAs, Tooltips und Empty States.
  * Konzeption von Landingpage-Headlines, Value Propositions und Feature-Benefits.
  * Einhaltung und Steuerung der Marken-Tonalität (Tone of Voice).

### 🗄️ `/database-architect` (`database-architect`) — [Erstellt](file:///home/dominik/.gemini/skills/database-architect/SKILL.md)

* **Ziel:** Entwurf und Optimierung von Datenbank-Schemas und Abfragen.
* **Aufgaben & Workflow:**
  * Erstellung von ER-Diagrammen und Migrations-Skripten (SQL / NoSQL).
  * Optimierung von SQL-Queries, Indizes und Datenbank-Performance.
  * Entwurf von Datenvalidierungs- und Integritätsregeln.

### 🔌 `/api-spec-builder` (`api-spec-builder`) — [Erstellt](file:///home/dominik/.gemini/skills/api-spec-builder/SKILL.md)

* **Ziel:** Spezifikation und Entwurf von REST-, GraphQL- und gRPC-Schnittstellen.
* **Aufgaben & Workflow:**
  * Erstellung valider OpenAPI/Swagger-Definitionen.
  * Definition von Request-/Response-Schemas, Statuscodes und Auth-Flows.
  * Generierung von API-Mock-Daten für Frontend-Testing.

---

## 4. Qualitäts-, Sicherheits- & Meta-Skills

### 🔒 `/security-auditor` (`security-auditor`) — [Erstellt](file:///home/dominik/.gemini/skills/security-auditor/SKILL.md)

* **Ziel:** Überprüfung der Codebasis auf Sicherheitslücken und Einhaltung von Best Practices.
* **Aufgaben & Workflow:**
  * Überprüfung auf OWASP Top 10 (Injection, Auth, CSRF, etc.).
  * Erkennung von Sensitive Data Leaks (Hardcoded Secrets/Tokens).
  * Überprüfung von Eingabevalidierung und Berechtigungskonzepten.

### ⚡ `/performance-profiler` (`performance-profiler`) — [Erstellt](file:///home/dominik/.gemini/skills/performance-profiler/SKILL.md)

* **Ziel:** Analyse und Behebung von Performance-Engpässen.
* **Aufgaben & Workflow:**
  * Analyse von Laufzeit-Komplexitäten, Memory Leaks und Bundle-Größen.
  * Optimierung von Render-Zyklen und Caching-Strategien.
  * Auswertung von Web Vitals und Server-Antwortzeiten.

### 🛠️ `/skill-creator` (`skill-creator`) — [Erstellt](file:///home/dominik/.gemini/skills/skill-creator/SKILL.md)

* **Ziel:** Erstellung, Validierung und Strukturierung neuer Agent-Skills (`SKILL.md`).
* **Aufgaben & Workflow:**
  * Automatische Erstellung der passenden Ordnerstruktur und `SKILL.md`-Datei.
  * Validierung des YAML-Frontmatters (`name`, `description`).
  * Formulierung präziser Ausführungsschritte und Workflows für KI-Agenten.

---

## 5. DevOps, Git & Dokumentation

### 🚀 `/devops-automation` (`devops-automation`) — [Erstellt](file:///home/dominik/.gemini/skills/devops-automation/SKILL.md)

* **Ziel:** Automatisierung von Build-, Test- und Deployment-Prozessen.
* **Aufgaben & Workflow:**
  * Erstellung/Wartung von CI/CD Pipelines (z. B. GitHub Actions, GitLab CI).
  * Containerisierung (Dockerfile, Docker Compose) und Orchestrierung.
  * Umgebungs- und Skript-Konfiguration (Environment Variables, Build Scripts).

### 🌳 `/git-workflow-master` (`git-workflow-master`) — [Erstellt](file:///home/dominik/.gemini/skills/git-workflow-master/SKILL.md)

* **Ziel:** Standardisierung von Versionierung, Commits und PRs.
* **Aufgaben & Workflow:**
  * Durchsetzung von Conventional Commits Syntax (`feat:`, `fix:`, `refactor:`).
  * Vorbereitung von PR-Beschreibungen und Branch-Strategien.
  * Prüfen von `.gitignore` und Vermeidung unbeabsichtigter Commits.

### 📝 `/doc-writer` (`doc-writer`) — [Erstellt](file:///home/dominik/.gemini/skills/doc-writer/SKILL.md)

* **Ziel:** Erstellung und Pflege technischer Dokumentationen für Entwickler und Anwender.
* **Aufgaben & Workflow:**
  * Erstellung verständlicher READMEs, API-Dokumentationen (OpenAPI/Swagger) und CHANGELOGs.
  * Pflege von In-Code Docstrings und Inline-Kommentaren für komplexe Logik.

---

## 6. Wissenschaftliches Arbeiten & Akademische Skills (Informatik / LaTeX)

### 🎓 `/academic-writer` (`academic-writer`) — [Erstellt](file:///home/dominik/.gemini/skills/academic-writer/SKILL.md)

* **Ziel:** Gliederung, Formulierung und Ausarbeitung von Abschnitten und Kapiteln für wissenschaftliche Arbeiten in LaTeX.
* **Aufgaben & Workflow:**
  * Erzeugung von sauberem LaTeX-Code für Gliederungen (`\section`), Abbildungen (`figure`), Tabellen und Listings.
  * Formulierung im objektiven, präzisen akademischen Tonfall (Deutsch/Englisch).
  * Strukturierung klassischer Informatik-Kapitel (Einleitung, Related Work, Architektur, Implementierung, Evaluation, Fazit).

### 📚 `/literature-researcher` (`literature-researcher`) — [Erstellt](file:///home/dominik/.gemini/skills/literature-researcher/SKILL.md)

* **Ziel:** Literaturanalyse, Erstellung von Vergleichsmatrizen und BibTeX-Referenzverwaltung.
* **Aufgaben & Workflow:**
  * Generierung syntaktisch valider BibTeX-Dateien (`.bib`) mit eindeutigen Citation Keys (`@inproceedings`, `@article`, `@book`).
  * Gegenüberstellung verwandter Arbeiten in LaTeX-Vergleichstabellen.
  * Abgrenzung der eigenen Forschung vom aktuellen Stand der Technik.

### 🔍 `/academic-proofreader` (`academic-proofreader`) — [Erstellt](file:///home/dominik/.gemini/skills/academic-proofreader/SKILL.md)

* **Ziel:** Wissenschaftliches Lektorat, Formalia-Checks und Prüfen von LaTeX-Querverweisen.
* **Aufgaben & Workflow:**
  * Prüfung von Querverweisen (`\ref`), geschützten Leerzeichen (`~`) und Zitationen (`\cite`).
  * Aufspüren von LaTeX-Syntaxfehlern (Sonderzeichen `%`, `_`, `&`).
  * Sprachliches Lektorat zur Vermeidung von Umgangssprache und Ich-Form.

