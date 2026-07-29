# Übersicht nützlicher KI-Skills (Useful Skills)

Diese Datei enthält die geplante Übersicht und Beschreibungen für nützliche KI-Skills (reine Instruktions- und Workflow-Skills für `SKILL.md`, ohne externe MCP-Server).

---

## 1. Bereits existierende Skills

* **`code-reviewer`** ([SKILL.md](file:///home/dominik/.gemini/skills/code-reviewer/SKILL.md))
  * **Fokus:** Strukturierte Code-Review-Analyse (Security, Performance, Type-Safety, Clean Code) mit nummerierten Berichten in `reviews/` und Fehler-Statusverwaltung.
* **`skill-creator`** ([SKILL.md](file:///home/dominik/.gemini/skills/skill-creator/SKILL.md))
  * **Fokus:** Erstellung, Validierung und Strukturierung neuer Agent-Skills gemäß dem Agent-Skills-Standard.
* **`requirements-engineering`** ([SKILL.md](file:///home/dominik/.gemini/skills/requirements-engineering/SKILL.md))
  * **Fokus:** Erfassung, Klärung und Dokumentation von funktionellen und nicht-funktionellen Anforderungen, User Stories und Akzeptanzkriterien.
* **`refactoring`** ([SKILL.md](file:///home/dominik/.gemini/skills/refactoring/SKILL.md))
  * **Fokus:** Sichere, verhaltensneutrale und strukturierte Überarbeitung bestehender Codebasen nach KISS- und DRY-Prinzipien.

---

## 2. Kern-Entwicklungs-Skills (Core Development Lifecycle)

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
* **Ziel:** Entwurf und Dokumentation robuster Systemarchitekturen, Schnittstellen, Datenmodelle und ADRs im Projekt-Root.
* **Aufgaben & Workflow:**
  * Definition von Modulgrenzen, APIs und Datenflüssen.
  * Erstellung von Mermaid-Diagrammen (C4, Sequenz- und ER-Diagramme).
  * Verfassung von Architecture Decision Records (ADRs).
  * Zwingende Ausgabe einer eindeutigen `.md`-Datei im Projekt-Root (z. B. `ARCHITECTURE.md`).

### 🐛 `/bug-fixer` (`bug-fixer`)
* **Ziel:** Systematische Fehleranalyse und nachhaltige Ursachenbehebung (Root Cause Analysis).
* **Aufgaben & Workflow:**
  * Auswertung von Traces, Logfiles und Fehlermeldungen.
  * Erstellung eines minimal reproduzierbaren Testfalls (Regressionstest).
  * Gezielte Behebung der Ursache (keine Symptombekämpfung).

### 🧪 `/test-engineer` (`test-engineer`)
* **Ziel:** Konzeption und Erstellung umfassender Testsuiten.
* **Aufgaben & Workflow:**
  * Generierung von Unit-Tests, Integrationstests und E2E-Tests.
  * Mocking & Stubbing von externen Abhängigkeiten.
  * Analyse und Optimierung der Testabdeckung (Coverage).

---

## 3. Spezialisierte Frontend-, UI & Daten-Skills

### 🎨 `/frontend-design` (`frontend-design`)
* **Ziel:** Entwurf und Umsetzung moderner, visueller UI/UX-Komponenten und Layouts.
* **Aufgaben & Workflow:**
  * Erstellung von responsiven Layouts, CSS-Variablen, Farbschemata und Typografie.
  * Implementation von Smooth Animations, Glassmorphism und Dark-Mode-Support.
  * Vermeidung von Platzhaltern durch direkte visuelle Demonstration.

### 🗄️ `/database-architect` (`database-architect`)
* **Ziel:** Entwurf und Optimierung von Datenbank-Schemas und Abfragen.
* **Aufgaben & Workflow:**
  * Erstellung von ER-Diagrammen und Migrations-Skripten (SQL / NoSQL).
  * Optimierung von SQL-Queries, Indizes und Datenbank-Performance.
  * Entwurf von Datenvalidierungs- und Integritätsregeln.

### 🔌 `/api-spec-builder` (`api-spec-builder`)
* **Ziel:** Spezifikation und Entwurf von REST-, GraphQL- und gRPC-Schnittstellen.
* **Aufgaben & Workflow:**
  * Erstellung valider OpenAPI/Swagger-Definitionen.
  * Definition von Request-/Response-Schemas, Statuscodes und Auth-Flows.
  * Generierung von API-Mock-Daten für Frontend-Testing.

---

## 4. Qualitäts-, Sicherheits- & Meta-Skills

### 🔒 `/security-auditor` (`security-auditor`)
* **Ziel:** Überprüfung der Codebasis auf Sicherheitslücken und Einhaltung von Best Practices.
* **Aufgaben & Workflow:**
  * Überprüfung auf OWASP Top 10 (Injection, Auth, CSRF, etc.).
  * Erkennung von Sensitive Data Leaks (Hardcoded Secrets/Tokens).
  * Überprüfung von Eingabevalidierung und Berechtigungskonzepten.

### ⚡ `/performance-profiler` (`performance-profiler`)
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

### 🚀 `/devops-automation` (`devops-automation`)
* **Ziel:** Automatisierung von Build-, Test- und Deployment-Prozessen.
* **Aufgaben & Workflow:**
  * Erstellung/Wartung von CI/CD Pipelines (z. B. GitHub Actions, GitLab CI).
  * Containerisierung (Dockerfile, Docker Compose) und Orchestrierung.
  * Umgebungs- und Skript-Konfiguration (Environment Variables, Build Scripts).

### 🌳 `/git-workflow-master` (`git-workflow-master`)
* **Ziel:** Standardisierung von Versionierung, Commits und PRs.
* **Aufgaben & Workflow:**
  * Durchsetzung von Conventional Commits Syntax (`feat:`, `fix:`, `refactor:`).
  * Vorbereitung von PR-Beschreibungen und Branch-Strategien.
  * Prüfen von `.gitignore` und Vermeidung unbeabsichtigter Commits.

### 📝 `/doc-writer` (`doc-writer`)
* **Ziel:** Erstellung und Pflege technischer Dokumentationen für Entwickler und Anwender.
* **Aufgaben & Workflow:**
  * Erstellung verständlicher READMEs, API-Dokumentationen (OpenAPI/Swagger) und CHANGELOGs.
  * Pflege von In-Code Docstrings und Inline-Kommentaren für komplexe Logik.
