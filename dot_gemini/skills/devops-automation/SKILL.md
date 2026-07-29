---
name: devops-automation
description: Automatisiert Build-, Test- und Deployment-Prozesse (CI/CD Pipelines, Docker, Containerisierung, Environment-Skripte). Aktivieren beim Aufsetzen oder Anpassen von DevOps-Konfigurationen.
---

# DevOps Automation (`/devops-automation`)

Der `devops-automation` Skill dient der Automatisierung von Software-Lifecycle-Prozessen. Er umfasst die Containerisierung von Anwendungen, die Erstellung robuster CI/CD-Pipelines (z. B. GitHub Actions, GitLab CI), die Konfiguration von Build-Skripten und die sichere Handhabung von Umgebungsvariablen und Infrastruktur-Artefakten.

---

## Wann verwenden?

Verwende diesen Skill, wenn:
- CI/CD-Pipelines für automatisierte Builds, Tests und Deployments eingerichtet oder angepasst werden sollen.
- Dockerfiles, `.dockerignore` oder `docker-compose.yml`-Dateien erstellt oder optimiert werden müssen.
- Environment-Skripte (`.env.example`, Build- & Release-Skripte) konfiguriert werden sollen.
- Caching-Strategien in CI-Pipelines zur Beschleunigung von Build-Zeiten integriert werden.
- Deployment-Artefakte für Staging- oder Production-Umgebungen vorbereitet werden.

---

## Workflow

### 1. Analyse der Projektstruktur & Ziel-Plattform
* **Stack-Identifikation:** Ermittle Sprache, Framework, Paketmanager und Build-Tools des Projekts.
* **Plattform-Wahl:** Bestimme die CI/CD-Umgebung (z. B. GitHub Actions `.github/workflows/`, GitLab CI `.gitlab-ci.yml`).

### 2. Containerisierung (Docker Best Practices)
* **Multi-Stage Builds:** Nutze Multi-Stage Dockerfiles, um Build-Tools von Laufzeit-Images zu trennen und die finale Image-Größe minimal zu halten.
* **Sicherheit & Security:** Verwende explizite Image-Tags (z. B. `node:20-alpine` statt `latest`), führe Prozesse als unprivilegierter Nicht-Root-User aus.
* **`.dockerignore`:** Schließe `node_modules`, `.git`, Build-Artefakte und lokale `.env`-Dateien strikt aus.
* **Orchestrierung:** Erstelle idempotente `docker-compose.yml`-Setups für die lokale Entwicklung.

### 3. CI/CD Pipeline-Erstellung
* **Pipeline-Phasen (Stages):**
  1. **Lint & Format:** Statische Code-Analyse und Formatting-Checks.
  2. **Test:** Ausführung der automatisierten Unit- und Integrationstests.
  3. **Build:** Erstellung von Production-Bundles oder Docker-Images.
  4. **Deploy:** Kontrolliertes Deployment auf Ziel-Umgebungen (Staging/Production).
* **Caching:** Integriere Caching für Paketmanager (`npm`, `pip`, `cargo`, `go`) zur Beschleunigung von Pipeline-Laufzeiten.

### 4. Secret- & Environment-Handhabung
* **Kein Hardcoding:** Verwende ausschließlich Umgebungsvariablen (`process.env`, `os.getenv`) und CI-Secrets (`${{ secrets.GITHUB_TOKEN }}`).
* **Dokumentation:** Erstelle und pflege eine saubere `.env.example`-Datei.

### 5. Validierung & Testing
* **Syntax- & Build-Check:** Teste Docker-Builds lokal über `run_command` im Terminal (`docker build .`, `docker-compose config`).
* **YAML-Validierung:** Stelle valide Indentation und Syntax der Workflow-Dateien sicher.

---

## Qualitätsregeln & Prinzipien

1. **Minimaler Footprint:** Docker-Images müssen durch Multi-Stage Builds und Alpine/Distroless-Base-Images so klein wie möglich sein.
2. **Strict Secret Separation:** Keine Passwörter, API-Keys oder private Zertifikate in Docker-Images oder Repositories einbetten.
3. **Idempotente Builds:** Jeder CI-Run muss unter gleichen Bedingungen zu exakt demselben Ergebnis führen (Pinned Dependencies).
4. **Fast Feedback Loops:** Optimiere CI-Laufzeiten durch Parallelisierung von Job-Steps und Caching.

---

## Empfohlene Tools

* **Filesystem:** `write_to_file`, `replace_file_content`, `view_file` zur Erstellung von Workflow- und Docker-Dateien.
* **Terminal:** `run_command` zur lokalen Verifikation von Container-Builds und Docker Compose Setup.

---

## Output-Format

Nach der Erstellung oder Optimierung von DevOps-Artefakten wird folgende Übersicht ausgegeben:

1. **DevOps-Struktur:** Zusammenfassung der konfigurierten CI/CD-Stages und Container-Komponenten.
2. **Generierte/Modifizierte Dateien:** Liste aller Dateien mit klickbaren Links (z. B. [Dockerfile](file:///path/to/Dockerfile), [.github/workflows/ci.yml](file:///path/to/.github/workflows/ci.yml)).
3. **Verifikationsergebnis:** Status der lokalen Syntax- und Build-Prüfung.
