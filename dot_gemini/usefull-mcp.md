# Recherche: Die 20 besten MCP (Model Context Protocol) Server auf MCPMarket.com & Ökosystem

## 📌 Zusammenfassung (TL;DR)
Der Model Context Protocol (MCP) Standard von Anthropic revolutioniert die Interaktion zwischen KI-Assistenten und externen Werkzeugen, Datenbanken sowie Schnittstellen. Auf Marktplätzen wie [MCPMarket.com](https://mcpmarket.com), [MCP.so](https://mcp.so) und [Awesome MCP Servers](https://github.com/wong2/awesome-mcp-servers) stehen tausende MCP-Server bereit. Viele erweiterte **Agent-Skills** (z. B. `git-workflow-master`, `database-architect`, `web-researcher`, `bug-fixer`) setzen spezifische MCP-Server zwingend voraus, um operative Systemaktionen durchzuführen. Gleichzeitig steigern diese MCP-Server die **alltägliche Produktivität**, indem sie dem KI-Modell den direkten Lese- und Schreibzugriff auf GitHub, lokale Datenbanken, Browser, Notion und Slack ermöglichen, ohne dass der Benutzer Kontext wechseln oder manuell Daten kopieren muss.

---

## 🔍 Detailanalyse & Erkenntnisse: Die Top 20 MCP-Server

### 📁 Kategorie 1: Versionierung & Code-Verwaltung

#### 1. GitHub MCP Server (`@modelcontextprotocol/server-github`)
- **Funktionalität & Features:** Bietet Schnittstellen zum Suchen von Repositories, Erstellen und Verwalten von Pull Requests, Verfassen von Issue-Kommentaren, Verzweigen und Durchsuchen von Codebasen.
- **Skill-Bezug:** Zwingend erforderlich für den Skill [`git-workflow-master`](file:///home/dominik/.gemini/skills/git-workflow-master/SKILL.md) sowie [`code-reviewer`](file:///home/dominik/.gemini/skills/code-reviewer/SKILL.md).
- **Mehrwert für den Alltag:** KI kann Code-Reviews direkt auf GitHub durchführen, PRs erstellen oder Issues automatisch zusammenfassen, ohne die Entwicklungsumgebung zu verlassen.
- **Quelle:** [MCPMarket - GitHub MCP](https://mcpmarket.com/server/github) | [GitHub Official Repo](https://github.com/modelcontextprotocol/servers/tree/main/src/github)

#### 2. Local Git MCP Server
- **Funktionalität & Features:** Ermöglicht direkte Git-Befehle im lokalen Dateisystem (`git status`, `git diff`, `git log`, Branch-Erstellung und lokale Staging-Operationen).
- **Skill-Bezug:** Ergänzt den Skill [`git-workflow-master`](file:///home/dominik/.gemini/skills/git-workflow-master/SKILL.md) für die lokale Repository-Verwaltung.
- **Mehrwert für den Alltag:** Ermöglicht der KI, ungepushte lokale Änderungen zu analysieren, sauber strukturierte Conventional Commits vorzubereiten und lokale Branch-Checkouts auszuführen.
- **Quelle:** [MCPMarket - Git Server](https://mcpmarket.com/server/git)

---

### 🌐 Kategorie 2: Web-Research & Browser-Automatisierung

#### 3. Playwright / Puppeteer MCP Server (`@modelcontextprotocol/server-puppeteer`)
- **Funktionalität & Features:** Öffnet headless Browserfenster, führt JavaScript aus, klickt auf Elemente, füllt Formulare aus und erstellt Screenshots von Webseiten.
- **Skill-Bezug:** Essentiell für den Skill [`web-researcher`](file:///home/dominik/.gemini/skills/web-researcher/SKILL.md) bei dynamischen SPA-Webseiten sowie für [`frontend-design`](file:///home/dominik/.gemini/skills/frontend-design/SKILL.md) zur visuellen Überprüfung.
- **Mehrwert für den Alltag:** KI kann komplexe Web-Workflows automatisieren (z. B. Formulare testen, Webseiten-Screenshots zur Layout-Prüfung erstellen oder dynamisch nachgeladene Inhalte auslesen).
- **Quelle:** [MCPMarket - Puppeteer](https://mcpmarket.com/server/puppeteer) | [GitHub Puppeteer MCP](https://github.com/modelcontextprotocol/servers/tree/main/src/puppeteer)

#### 4. Brave Search / Fetch MCP Server (`@modelcontextprotocol/server-brave-search`)
- **Funktionalität & Features:** Bietet datenschutzfreundliche Echtzeit-Websuche (über Brave API) und saubere HTML-zu-Markdown-Konvertierung von Online-Dokumentationen.
- **Skill-Bezug:** Hauptwerkzeug für [`web-researcher`](file:///home/dominik/.gemini/skills/web-researcher/SKILL.md) und [`literature-researcher`](file:///home/dominik/.gemini/skills/literature-researcher/SKILL.md).
- **Mehrwert für den Alltag:** Schneller Zugriff auf aktuelle Entwickler-Dokumentationen, API-Referenzen und Nachrichten direkt im Chatfenster.
- **Quelle:** [MCPMarket - Brave Search](https://mcpmarket.com/server/brave-search)

---

### 🧠 Kategorie 3: Memory, Logik & Kontext-Verwaltung

#### 5. Memory / Knowledge Graph MCP Server (`@modelcontextprotocol/server-memory`)
- **Funktionalität & Features:** Ein persistenter Wissensgraph, der Entitäten, Relationen und Beobachtungen über mehrere Chat-Sitzungen hinweg speichert und durchsuchbar macht.
- **Skill-Bezug:** Basis für alle persistenten Konversations- und Architektur-Skills.
- **Mehrwert für den Alltag:** Die KI merkt sich projektspezifische Konventionen, Vorlieben des Entwicklers und wiederkehrende Entscheidungen dauerhaft.
- **Quelle:** [MCPMarket - Memory Server](https://mcpmarket.com/server/memory) | [GitHub Memory MCP](https://github.com/modelcontextprotocol/servers/tree/main/src/memory)

#### 6. Sequential Thinking MCP Server (`@modelcontextprotocol/server-sequential-thinking`)
- **Funktionalität & Features:** Bietet ein strukturierte Schritt-für-Schritt-Reflexions-Tool, mit dem die KI komplexe Probleme in Teilschritte zerlegt, Hypothesen prüft und bei Bedarf revidiert.
- **Skill-Bezug:** Unterstützt [`bug-fixer`](file:///home/dominik/.gemini/skills/bug-fixer/SKILL.md), [`architecture-design`](file:///home/dominik/.gemini/skills/architecture-design/SKILL.md) und [`refactoring`](file:///home/dominik/.gemini/skills/refactoring/SKILL.md).
- **Mehrwert für den Alltag:** Verhindert voreiliges oder fehlerhaftes Halluzinieren bei schwierigen Logik-Problemen, Root-Cause-Analysen oder Architektur-Refactorings.
- **Quelle:** [MCPMarket - Sequential Thinking](https://mcpmarket.com/server/sequentialthinking)

#### 7. Filesystem MCP Server (`@modelcontextprotocol/server-filesystem`)
- **Funktionalität & Features:** Sichere, konfigurierbare Lese- und Schreibzugriffe auf freigegebene Verzeichnisse des lokalen Rechners.
- **Skill-Bezug:** Grundlage für nahezu alle lokalen Entwicklungs-Skills (z. B. [`doc-writer`](file:///home/dominik/.gemini/skills/doc-writer/SKILL.md), [`test-engineer`](file:///home/dominik/.gemini/skills/test-engineer/SKILL.md)).
- **Mehrwert für den Alltag:** Erlaubt der KI das direkte Lesen, Durchsuchen und Aktualisieren lokaler Projektdateien in zugewiesenen Ordnern.
- **Quelle:** [MCPMarket - Filesystem](https://mcpmarket.com/server/filesystem)

---

### 🗄️ Kategorie 4: Datenbanken, Backend & Infrastruktur

#### 8. PostgreSQL MCP Server (`@modelcontextprotocol/server-postgres`)
- **Funktionalität & Features:** Verbindet die KI mit Postgres-Datenbanken, erlaubt die Inspektion von Tabellenschemas, die Ausführung von SQL-Abfragen und die Analyse von Query-Plänen.
- **Skill-Bezug:** Zwingend empfohlen für den Skill [`database-architect`](file:///home/dominik/.gemini/skills/database-architect/SKILL.md).
- **Mehrwert für den Alltag:** SQL-Abfragen in natürlicher Sprache formulieren, Datenbank-Indizes optimieren und Beispieldaten direkt im Chat abfragen.
- **Quelle:** [MCPMarket - Postgres](https://mcpmarket.com/server/postgres)

#### 9. SQLite MCP Server (`@modelcontextprotocol/server-sqlite`)
- **Funktionalität & Features:** Leichtgewichtige Anbindung für lokale SQLite-Datenbankdateien (.db / .sqlite).
- **Skill-Bezug:** Ergänzt [`database-architect`](file:///home/dominik/.gemini/skills/database-architect/SKILL.md) und lokale Prototypen-Entwicklung.
- **Mehrwert für den Alltag:** Schnelles Analysieren und Bearbeiten lokaler Anwendungsdatenbanken ohne Installation eines vollwertigen DB-Servers.
- **Quelle:** [MCPMarket - SQLite](https://mcpmarket.com/server/sqlite)

#### 10. Supabase MCP Server
- **Funktionalität & Features:** Ermöglicht die Verwaltung von Supabase-Projekten (BaaS), inklusive Auth-Konfiguration, Database Tables, Storage Buckets und Edge Functions.
- **Skill-Bezug:** Unterstützt [`database-architect`](file:///home/dominik/.gemini/skills/database-architect/SKILL.md) und Backend-Integrations-Skills.
- **Mehrwert für den Alltag:** Schneller Aufbau von Cloud-Backends und RLS-Sicherheitsregeln per KI-Prompt.
- **Quelle:** [MCPMarket - Supabase](https://mcpmarket.com/server/supabase)

#### 11. Docker MCP Gateway / Server
- **Funktionalität & Features:** Steuerung der lokalen Docker-Daemon-Instanz (Starten/Stoppen von Containern, Logs auslesen, Dockerfiles analysieren, Netzwerke prüfen).
- **Skill-Bezug:** Essentiell für den Skill [`devops-automation`](file:///home/dominik/.gemini/skills/devops-automation/SKILL.md).
- **Mehrwert für den Alltag:** Container-Fehler direkt anhand der Logs diagnostizieren und lokale Dev-Umgebungen per Sprachbefehl steuern.
- **Quelle:** [MCPMarket - Docker](https://mcpmarket.com/server/docker)

---

### 📊 Kategorie 5: Projektmanagement & Team-Kommunikation

#### 12. Linear MCP Server
- **Funktionalität & Features:** Vollständiger Zugriff auf Linear-Tickets, Sprints, Epics, Cycle-Status und Team-Backlogs.
- **Skill-Bezug:** Unverzichtbar für den Skill [`project-manager`](file:///home/dominik/.gemini/skills/project-manager/SKILL.md) und [`requirements-engineering`](file:///home/dominik/.gemini/skills/requirements-engineering/SKILL.md).
- **Mehrwert für den Alltag:** Automatisches Erstellen von Tickets aus Bug-Reports oder Meeting-Notizen und Abfragen des aktuellen Sprint-Fortschritts.
- **Quelle:** [MCPMarket - Linear](https://mcpmarket.com/server/linear)

#### 13. Jira MCP Server
- **Funktionalität & Features:** Integration in Atlassian Jira zur Ticket-Erstellung, Status-Updates, Backlog-Pflege und Sprint-Organisation in Enterprise-Umgebungen.
- **Skill-Bezug:** Unterstützt [`project-manager`](file:///home/dominik/.gemini/skills/project-manager/SKILL.md).
- **Mehrwert für den Alltag:** Erleichtert das Verfassen komplexer Jira-User-Stories inklusive Akzeptanzkriterien direkt aus dem Code heraus.
- **Quelle:** [MCPMarket - Jira](https://mcpmarket.com/server/jira)

#### 14. Slack MCP Server (`@modelcontextprotocol/server-slack`)
- **Funktionalität & Features:** Lesen und Senden von Nachrichten in Slack-Kanälen, Durchsuchen von Chat-Historien und Versenden von Alerts.
- **Skill-Bezug:** Generelle Kommunikation und DevOps-Alerts in Kombination mit [`devops-automation`](file:///home/dominik/.gemini/skills/devops-automation/SKILL.md).
- **Mehrwert für den Alltag:** Zusammenfassen verpasster Slack-Diskussionen oder automatisches Senden von Release-Notes in Team-Channels.
- **Quelle:** [MCPMarket - Slack](https://mcpmarket.com/server/slack)

#### 15. Notion MCP Server
- **Funktionalität & Features:** Lesen, Erstellen und Aktualisieren von Notion-Seiten, Datenbank-Einträgen und Wikis.
- **Skill-Bezug:** Unterstützt [`project-manager`](file:///home/dominik/.gemini/skills/project-manager/SKILL.md) und [`doc-writer`](file:///home/dominik/.gemini/skills/doc-writer/SKILL.md).
- **Mehrwert für den Alltag:** Perfekt zum Pflegen des persönlichen "Second Brains", Erstellen von Dokumentationen und Syncen von Task-Listen.
- **Quelle:** [MCPMarket - Notion](https://mcpmarket.com/server/notion)

---

### 🎨 Kategorie 6: Notizen, Design, API & Observability

#### 16. Obsidian MCP Server
- **Funktionalität & Features:** Direkter Lese- und Schreibzugriff auf lokale Obsidian Markdown Vaults, inklusive Tag-Graphen und Verlinkungen.
- **Skill-Bezug:** Sehr nützlich für [`academic-writer`](file:///home/dominik/.gemini/skills/academic-writer/SKILL.md) und Wissensmanagement.
- **Mehrwert für den Alltag:** KI kann persönliche Notizen durchsuchen, Verknüpfungen herstellen und Recherchen direkt im Notizbuch ablegen.
- **Quelle:** [MCPMarket - Obsidian](https://mcpmarket.com/server/obsidian)

#### 17. Figma MCP Server
- **Funktionalität & Features:** Extrahiert Design-Tokens, Frame-Strukturen, Komponenten-Eigenschaften und CSS-Layout-Informationen aus Figma-Dateien.
- **Skill-Bezug:** Zwingend empfohlen für [`frontend-design`](file:///home/dominik/.gemini/skills/frontend-design/SKILL.md) und [`copywriter`](file:///home/dominik/.gemini/skills/copywriter/SKILL.md).
- **Mehrwert für den Alltag:** Ermöglicht die direkte Umwandlung von Figma UI-Mockups in saubere HTML/CSS/React-Komponenten ohne manuelle Inspektion.
- **Quelle:** [MCPMarket - Figma](https://mcpmarket.com/server/figma)

#### 18. Sentry MCP Server
- **Funktionalität & Features:** Durchsucht Produktionsfehler, Stack-Traces und Performance-Bottlenecks aus der Sentry Observability Platform.
- **Skill-Bezug:** Essentiell für den Skill [`bug-fixer`](file:///home/dominik/.gemini/skills/bug-fixer/SKILL.md) und [`performance-profiler`](file:///home/dominik/.gemini/skills/performance-profiler/SKILL.md).
- **Mehrwert für den Alltag:** KI kann echte Produktions-Crashlogs analysieren und sofort den passenden Code-Fix im Repository lokalisieren.
- **Quelle:** [MCPMarket - Sentry](https://mcpmarket.com/server/sentry)

#### 19. Google Drive / Workspace MCP Server
- **Funktionalität & Features:** Durchsucht Google Docs, Sheets und Slides, liest Tabelleninhalte und erstellt Entwürfe.
- **Skill-Bezug:** Unterstützt [`copywriter`](file:///home/dominik/.gemini/skills/copywriter/SKILL.md) und Business-Recherchen.
- **Mehrwert für den Alltag:** Auslesen von Produktdaten aus Google Sheets und automatisches Verfassen von Berichten in Google Docs.
- **Quelle:** [MCPMarket - Google Drive](https://mcpmarket.com/server/google-drive)

#### 20. OpenAPI / Fetch Spec MCP Server
- **Funktionalität & Features:** Parst OpenAPI/Swagger-Spezifikationen (JSON/YAML) und ermöglicht das dynamische Testen von REST-APIs direkt aus dem Chat heraus.
- **Skill-Bezug:** Zwingend erforderlich für den Skill [`api-spec-builder`](file:///home/dominik/.gemini/skills/api-spec-builder/SKILL.md).
- **Mehrwert für den Alltag:** Schnelles Validieren von Schnittstellen, Generieren von API-Mocks und Verifizieren von Endpunkten im Entwickleralltag.
- **Quelle:** [MCPMarket - OpenAPI](https://mcpmarket.com/server/openapi)

---

## 📊 Übersichtsmatrix: Skill-Zuordnung & Alltag-Nutzen

| MCP Server | Kategorie | Benötigt von Agent-Skill | Hauptnutzen im Alltags-Workflow |
| :--- | :--- | :--- | :--- |
| **GitHub** | Code / VCS | `git-workflow-master`, `code-reviewer` | PRs, Code-Search & Issue-Management |
| **Local Git** | Code / VCS | `git-workflow-master` | Lokale Diffs, Commits & Branching |
| **Playwright** | Web & Browser | `web-researcher`, `frontend-design` | Headless Web-Automatisierung & Screenshots |
| **Brave Search** | Web & Browser | `web-researcher`, `literature-researcher` | Live-Websuche & Doku-Retrieval |
| **Memory** | Memory & KI | *Global / Alle Agenten* | Dauerhaftes Gedächtnis für Nutzer-Präferenzen |
| **Sequential Thinking** | KI-Logik | `bug-fixer`, `architecture-design` | Strukturierte Problemlösung ohne Halluzinationen |
| **Filesystem** | Core / I/O | `doc-writer`, `test-engineer`, *Alle* | Lokale Dateien lesen, bearbeiten & durchsuchen |
| **PostgreSQL** | Datenbank | `database-architect` | SQL-Abfragen & Schema-Analysen |
| **SQLite** | Datenbank | `database-architect` | Lokale DB-Dateien inspektieren |
| **Supabase** | Backend/Cloud | `database-architect` | BaaS-Verwaltung & Edge-Functions |
| **Docker** | DevOps | `devops-automation` | Container-Logs & Dev-Umgebungen steuern |
| **Linear** | PM / Tickets | `project-manager`, `requirements-engineering` | Task-Tracking & Sprint-Backlog |
| **Jira** | PM / Enterprise | `project-manager` | Corporate Storys & Enterprise-Tickets |
| **Slack** | Kommunikation | `devops-automation` | Team-Chats auslesen & Alerts senden |
| **Notion** | Notizen & Wiki | `project-manager`, `doc-writer` | Wiki-Pflege & Second-Brain Sync |
| **Obsidian** | Knowledge Base | `academic-writer` | Lokale Markdown Vaults durchsuchen |
| **Figma** | Design / UI | `frontend-design`, `copywriter` | Design-Tokens & UI-Specs zu Code umwandeln |
| **Sentry** | Observability | `bug-fixer`, `performance-profiler` | Production Crash-Logs analysieren |
| **Google Drive** | Dokumente | `copywriter` | Google Docs & Sheets direkt auslesen |
| **OpenAPI** | API / Dev | `api-spec-builder` | REST-APIs parsen & live testen |

---

## 💡 Fazit & Empfehlungen für den Einsatz

1. **Gezielte Auswahl statt Überladung:**
   - Aktivieren Sie nicht alle 20 MCP-Server gleichzeitig. Jeder aktive Server fügt Werkzeugdefinitionen in den Kontext des KI-Modells ein, was das Kontext-Fenster belasten und Reaktionszeiten verlängern kann.
   - **Empfohlene Basis-Ausstattung für den Entwickler-Alltag:** 
     - `Filesystem`, `GitHub`, `Memory`, `Brave Search` und `Sequential Thinking` (5 Kern-Server).

2. **Kombination mit Agent-Skills:**
   - Wenn Sie spezialisierte Agenten-Skills (wie [`database-architect`](file:///home/dominik/.gemini/skills/database-architect/SKILL.md) oder [`frontend-design`](file:///home/dominik/.gemini/skills/frontend-design/SKILL.md)) nutzen, aktivieren Sie den jeweiligen MCP-Server (z. B. `PostgreSQL` oder `Figma`) bedarfsgerecht für diese Session.

3. **Sicherheits- & Sandbox-Hinweise:**
   - Da MCP-Server reale Aktionen im lokalen System ausführen können (z. B. Dateien schreiben, Docker-Container starten), empfiehlt sich die Ausführung in isolierten Containern (z. B. über das Docker MCP Gateway) oder mit beschränkten Verzeichnis-Rechten (`Filesystem MCP`).
