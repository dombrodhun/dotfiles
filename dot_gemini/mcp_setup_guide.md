# MCP-Server Setup & Konfigurationsanleitung

Diese Übersicht enthält alle notwendigen Schritte, API-Keys und Umgebungsvariablen, um die in [`usefull-mcp.md`](file:///home/dominik/.gemini/usefull-mcp.md) und in der globalen Konfigurationsdatei [`mcp_config.json`](file:///home/dominik/.gemini/config/mcp_config.json) eingebundenen 20 MCP-Server vollständig in Betrieb zu nehmen.

---

## 📌 Status
* **Konfigurationsdatei:** [`/home/dominik/.gemini/config/mcp_config.json`](file:///home/dominik/.gemini/config/mcp_config.json) (bereits aktualisiert)
* **Standard-Server ohne API-Keys (Sofort einsatzbereit):**
  * `filesystem` (Verzeichnis: `/home/dominik`)
  * `memory` (Persistentes KI-Gedächtnis)
  * `sequential-thinking` (Strukturierte KI-Logik)
  * `fetch` (HTML-zu-Markdown Retrieval)
  * `puppeteer` (Headless Browser & Screenshots)
  * `git` (Lokale Git-Befehle)
  * `sqlite` (Lokale SQLite DBs)
  * `openapi` (REST API Spec Parsing)
  * `docker` (Sofern Docker Daemon läuft)

---

## 🔑 Benötigte API-Keys & Zugriffs-Tokens

Trage die folgenden Tokens direkt in [`mcp_config.json`](file:///home/dominik/.gemini/config/mcp_config.json) in der jeweiligen `env`-Sektion des Servers ein:

### 1. Code & Versionierung
* **GitHub (`github`)**
  * Variable: `"GITHUB_PERSONAL_ACCESS_TOKEN": "ghp_..."`
  * Erstellung: GitHub -> Settings -> Developer Settings -> Personal Access Tokens (Scope: `repo`, `read:org`).

### 2. Suche & Web
* **Brave Search (`brave-search`)**
  * Variable: `"BRAVE_API_KEY": "BSA..."`
  * Erstellung: [Brave Search API Portal](https://api.search.brave.com/) (Kostenloser Plan verfügbar).

### 3. Projektmanagement & Tickets
* **Linear (`linear`)**
  * Variable: `"LINEAR_API_KEY": "lin_api_..."`
  * Erstellung: Linear -> Settings -> Account -> Personal API Keys.
* **Jira (`jira`)**
  * Variablen:
    * `"JIRA_URL": "https://dein-unternehmen.atlassian.net"`
    * `"JIRA_USERNAME": "deine-email@beispiel.de"`
    * `"JIRA_API_TOKEN": "ATATT3..."`
  * Erstellung: Atlassian Account Settings -> Security -> Create and manage API tokens.

### 4. Kommunikation & Wissensmanagement
* **Slack (`slack`)**
  * Variablen:
    * `"SLACK_BOT_TOKEN": "xoxb-..."`
    * `"SLACK_TEAM_ID": "T00000000"`
  * Erstellung: [Slack API Apps Portal](https://api.slack.com/apps) (Bot Token Scopes: `channels:history`, `chat:write`).
* **Notion (`notion`)**
  * Variable: `"NOTION_API_TOKEN": "secret_..."`
  * Erstellung: [Notion Integrations Portal](https://www.notion.so/my-integrations).
* **Obsidian (`obsidian`)**
  * Variable: `"OBSIDIAN_VAULT_PATH": "/home/dominik/Pfad/zu/deinem/Vault"`
  * Pfad auf deinen lokalen Obsidian-Ordner anpassen.

### 5. Design, Observability & Cloud
* **Figma (`figma`)**
  * Variable: `"FIGMA_PERSONAL_ACCESS_TOKEN": "figd_..."`
  * Erstellung: Figma Account Settings -> Personal access tokens.
* **Sentry (`sentry`)**
  * Variablen:
    * `"SENTRY_AUTH_TOKEN": "sntrys_..."`
    * `"SENTRY_ORG": "deine-org-slug"`
  * Erstellung: Sentry -> User Settings -> Developer Settings -> New Token.
* **Google Drive (`google-drive`)**
  * Variablen:
    * `"CLIENT_ID": "....apps.googleusercontent.com"`
    * `"CLIENT_SECRET": "GOCSPX-..."`
  * Erstellung: Google Cloud Console -> Credentials -> OAuth 2.0 Client ID.
* **Supabase (`supabase`)**
  * Variablen:
    * `"SUPABASE_URL": "https://xyz.supabase.co"`
    * `"SUPABASE_SERVICE_ROLE_KEY": "eyJ..."`
  * Erstellung: Supabase Dashboard -> Project Settings -> API.

### 6. Datenbanken
* **PostgreSQL (`postgres`)**
  * Variablen:
    * `"PGHOST": "localhost"`
    * `"PGPORT": "5432"`
    * `"PGUSER": "postgres"`
    * `"PGPASSWORD": "dein_passwort"`
    * `"PGDATABASE": "deine_datenbank"`

---

## 🛠️ Nächste Schritte zur Aktivierung

1. Open File: Öffne [`/home/dominik/.gemini/config/mcp_config.json`](file:///home/dominik/.gemini/config/mcp_config.json).
2. Tokens eintragen: Füge die benötigten Keys/Pfade in die Anführungszeichen ein.
3. AGY / CLI neu starten: Antigravity CLI neu starten oder in einer AGY-Sitzung `/mcp` ausführen, um die MCP-Server neu zu laden.
