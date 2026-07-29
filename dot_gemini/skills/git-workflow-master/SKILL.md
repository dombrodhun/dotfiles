---
name: git-workflow-master
description: Standardisiert Versionierung, Conventional Commits, Branch-Strategien, PR-Beschreibungen und Repository-Safety (.gitignore). Aktivieren beim Erstellen von Commits, Branches oder Pull Requests.
---

# Git Workflow Master (`/git-workflow-master`)

Der `git-workflow-master` Skill dient der sauberen, standardisierten und sicheren Versionskontrolle in Git-Repositories. Er setzt atomare Commits nach dem **Conventional Commits**-Standard durch, verhindert das versehentliche Committen von Secrets oder Artefakten und bereitet aussagekräftige Pull Requests (PRs) vor.

---

## Wann verwenden?

Verwende diesen Skill, wenn:
- Neue Git-Commits verfasst oder Commit-Meldungen strukturiert werden sollen.
- Ein neuer Feature- oder Fix-Branch angelegt werden soll.
- Ein Pull Request (PR) vorbereitet oder eine PR-Beschreibung erstellt werden soll.
- Die `.gitignore`-Datei überprüft werden muss, um unbeabsichtigtes Staging zu verhindern.
- Ein sauberer Git-Verlauf (Clean Git History) durch Squashing oder Atomic Commits sichergestellt werden soll.

---

## Workflow

### 1. Repository- & Sicherheits-Check (Safety First)
* **`.gitignore` Prüfung:** Verifiziere vor dem Stagen von Dateien, dass sensible Daten (`.env`, Private Keys, Tokens) sowie temporäre Build-Artefakte (`node_modules/`, `dist/`, `*.log`, `__pycache__/`) ausgeschlossen sind.
* **Status-Analyse:** Prüfe den aktuellen Zustand über Terminal (`git status`, `git diff --staged`).

### 2. Branch-Strategie & Arbeitspakete
* **Branch-Isolation:** Arbeite stets auf isolierten Feature- oder Fix-Branches (z. B. `feat/login-page`, `fix/null-pointer`). Committe NIEMALS direkt auf `main` oder `master` ohne explizite Benutzeranweisung.

### 3. Atomare Conventional Commits
* **Syntax-Standard:** Verfasse Commit-Nachrichten strikt nach Conventional Commits:
  `<type>(<scope>): <kurze Beschreibung im Präsens>`
* **Zulässige Typen:**
  - `feat:` Neue Funktionalität für den Endnutzer.
  - `fix:` Behebung eines Fehlers.
  - `docs:` Reine Dokumentationsänderungen.
  - `refactor:` Code-Änderung ohne Bugfix oder neues Feature.
  - `test:` Hinzufügen oder Anpassen von Tests.
  - `perf:` Performance-Optimierung.
  - `chore:` Wartungsarbeiten, Abhängigkeits-Updates, Build-Skripte.
* **Atomarität:** Erstelle für jede logische Änderung einen eigenen, fokussierten Commit.

### 4. PR-Vorbereitung & Review-Guide
* **Strukturierte PR-Beschreibung:** Erstelle bei PR-Vorbereitung eine Übersicht mit:
  - **Zusammenfassung:** Was ändert dieser PR?
  - **Änderungsliste:** Stichpunkte der behobenen / hinzugefügten Komponenten.
  - **Testnachweise:** Beschreibung oder Log-Auszug der durchgeführten Tests.
  - **Breaking Changes:** Expliziter Hinweis, falls rückwärtskompatible Schnittstellen gebrochen werden (`BREAKING CHANGE:`).

---

## Qualitätsregeln & Prinzipien

1. **Zero Secret Policy:** Unter keinen Umständen vertrauliche Daten, Zugangsdaten oder Umgebungsvariablen committen.
2. **Strict Conventional Commits:** Alle Commit-Messages müssen präzise und normiert sein.
3. **Atomic Commits:** Vermische nicht Refactoring, Bugfixes und neue Features in einem einzigen Riesen-Commit.
4. **Clean Workspace:** Unbeabsichtigte oder temporäre Testdateien vor dem Stagen aufräumen.

---

## MCP- & Tool-Integration

* **Empfohlene MCPs:** `github/create_pull_request`, `github/create_branch`, `github/list_commits` (falls installiert).
* **Standard-Fallback (CLI):** Nutze `run_command` mit Standard-Git-Befehlen (`git status`, `git diff`, `git commit -m "..."`, `git push`).

---

## Output-Format

Bei Ausführung wird folgende Git-Zusammenfassung ausgegeben:

1. **Staged Files & Safety Check:** Bestätigung, dass `.gitignore` greift und keine Secrets enthalten sind.
2. **Vorgeschlagene Commit-Nachricht(en):** Exakter Text nach Conventional Commits Syntax.
3. **PR-Template (falls zutreffend):** Fertig formatierter Markdown-Text für die Pull-Request-Beschreibung.
