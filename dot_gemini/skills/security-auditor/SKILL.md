---
name: security-auditor
description: Überprüft die Codebasis auf Sicherheitslücken (OWASP Top 10), Hardcoded Secrets, unsichere Abhängigkeiten und fehlerhafte Zugriffssteuerung. Aktivieren bei Security-Audits oder vor Releases.
---

# Security Auditor (`/security-auditor`)

Der `security-auditor` Skill dient der systematischen Sicherheitsüberprüfung (Security Audit) von Codebasen, Konfigurationen und Abhängigkeiten. Er identifiziert Schwachstellen nach gängigen Sicherheitsstandards (wie OWASP Top 10), deckt unbeabsichtigte Hardcoded Secrets auf und liefert konkrete Handlungsempfehlungen zur Absicherung der Anwendung.

---

## Wann verwenden?

Verwende diesen Skill, wenn:
- Eine Codebasis oder ein Pull Request vor einem Release auf Sicherheitslücken überprüft werden soll.
- Verdacht auf Harcoded Secrets (API-Keys, Passwörter, Tokens) im Quellcode besteht.
- Benutzereingaben auf SQL-Injection, Cross-Site Scripting (XSS) oder Command Injection untersucht werden müssen.
- Authentifizierungs- und Autorisierungskonzepte (Access Control, RBAC, JWT-Validierung) auditiert werden sollen.
- Drittanbieter-Abhängigkeiten auf bekannte Schwachstellen (Vulnerabilities) geprüft werden sollen.

---

## Workflow

### 1. Secret Scan & Konfigurations-Audit
* **Secrets-Erkennung:** Durchsuche die Codebasis gezielt nach API-Keys, Private Keys, SSH-Keys, OAuth-Tokens und Datenbank-Passwörtern (mittels Pattern-Matching / `grep_search`).
* **Environment & Config:** Prüfe `.env.example`, Dockerfiles und CI/CD-Konfigurationen auf exponierte vertrauliche Daten.

### 2. Statische Code-Analyse (OWASP Top 10 Audit)
* **Injection-Schwachstellen:** Prüfe alle SQL-Queries, NoSQL-Filter und Systembefehle auf dynamisch verkettete Benutzereingaben (Parameterized Queries / ORM nutzen!).
* **Cross-Site Scripting (XSS):** Prüfe die Ausgabe von Benutzereingaben im Frontend auf fehlendes Escaping/Sanitizing (z. B. `dangerouslySetInnerHTML`).
* **Broken Access Control & Auth:** Verifiziere, ob geschützte Endpunkte und Ressourcen serverseitig autorisiert werden (Kein Trust on Client Side, IDOR-Prüfung).
* **Kryptografie & CSRF:** Überprüfe die Verwendung sicherer Hashing-Algorithmen (z. B. Argon2, bcrypt für Passwörter) und CSRF-Protection.

### 3. Abhängigkeiten- & Supply-Chain-Audit
* **Dependency Scan:** Führe Paketmanager-Checks über `run_command` aus (z. B. `npm audit`, `pip-audit`, `cargo audit`, `go vuln check`).
* **Veraltete Pakete:** Identifiziere kritisch veraltete Bibliotheken mit bekannten CVEs.

### 4. Berichtserstellung & Remediation im Ordner `./agents/`
* **Dokumentation:** Speichere den Sicherheitsbericht verpflichtend als Markdown-Datei im Ordner `./agents/` im Projekt-Root (z. B. `./agents/SECURITY.md` oder `./agents/audits/<NR>-security-audit.md`).
* **Klassifizierung:** Kategoriere gefundene Schwachstellen nach Schweregrad: `CRITICAL`, `HIGH`, `MEDIUM`, `LOW`.
* **Fix-Empfehlungen:** Liefer zu jeder Schwachstelle den exakten Pfad, die betroffenen Zeilen und einen konkreten Code-Fix.

---

## Qualitätsregeln & Prinzipien

1. **Zero Hardcoded Secrets:** Kein Secret darf direkt im Quellcode oder im Repository stehen (Ausschließlich `.env` / Secret Manager).
2. **Defense in Depth:** Vertraue niemals Client-Daten; validiere und sanitisiere alle Eingaben auf Serverseite.
3. **No Security by Obscurity:** Verlasse dich nicht auf versteckte Pfade oder nicht dokumentierte Parameter.
4. **Remediation First:** Zu jeder identifizierten Schwachstelle muss ein praxistauglicher Behebungsvorschlag gemacht werden.

---

## Empfohlene Tools

* **Filesystem & Search:** `grep_search`, `view_file` zum Scannen von Secrets und unsicheren Funktionsaufrufen.
* **Terminal:** `run_command` zum Ausführen von SAST-/Dependency-Scannern (`npm audit`, `trivy`, `semgrep`, etc.).

---

## Output-Format

Nach dem Audit wird ein übersichtlicher Sicherheitsbericht bereitgestellt:

1. **Management Summary:** Gesamtbewertung des Sicherheitsstatus (z. B. `CRITICAL: 0, HIGH: 1, MEDIUM: 2`).
2. **Detailierte Fundstellen:**
   - **Schweregrad:** [CRITICAL / HIGH / MEDIUM / LOW]
   - **Kategorie:** (z. B. OWASP A01: Broken Access Control)
   - **Betroffene Datei:** [auth_service.py](file:///path/to/auth_service.py#L45)
   - **Ursache & Risiko:** Kurze Beschreibung der Lücke.
   - **Empfohlener Fix:** Diff oder Code-Snippet zur Behebung.
3. **Dependency Status:** Auswertung des Paket-Audits.
