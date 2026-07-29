---
name: test-engineer
description: Konzipiert und erstellt automatisierte Testsuiten (Unit-, Integrations- & E2E-Tests), richtet Mocks/Stubs ein und analysiert die Testabdeckung. Aktivieren beim Schreiben von Tests, beim Erhöhen der Coverage oder beim Aufsetzen von Test-Pipelines.
---

# Test Engineer (`/test-engineer`)

Der `test-engineer` Skill dient der Konzeption, Erstellung und Optimierung automatisierter Testsuiten über alle Testebenen hinweg (Unit-, Integrations- und End-to-End-Tests). Er stellt eine hohe Testabdeckung, saubere Isolation externer Abhängigkeiten und wartbaren Testcode sicher.

---

## Wann verwenden?

Verwende diesen Skill, wenn:
- Neue Funktionen mit automatisierten Tests (Unit/Integration) abgesichert werden sollen.
- Die Testabdeckung (Test Coverage) in einer bestehenden Codebasis erhöht oder analysiert werden soll.
- Mocks, Stubs oder Fakes für externe APIs, Datenbanken oder Subsysteme aufgesetzt werden müssen.
- End-to-End-Tests (z. B. mit Playwright, Cypress oder Selenium) erstellt werden sollen.
- Test-Frameworks (z. B. `pytest`, `Jest`/`Vitest`, `go test`, `JUnit`) konfiguriert werden sollen.

---

## Workflow

### 1. Analyse der Testbasis & Rahmenbedingungen
* **Framework-Erkennung:** Identifiziere das im Projekt verwendete Test-Framework und existierende Konfigurationen (`jest.config.js`, `pytest.ini`, `vitest.config.ts`, `go.mod`, etc.).
* **Abhängigkeiten & Schnittstellen:** Analysiere zu testende Module, deren Eingaben/Ausgaben sowie externe Systemabhängigkeiten (Datenbanken, HTTP-APIs).
* **Testfall-Katalog:** Definiere Happy Paths, Edge Cases, Null-/Boundary-Werte und Fehlerpfade.

### 2. Test-Konzeption & Strategie
* **Testpyramide beachten:**
  * **Unit-Tests:** Schnelle, isolierte Tests für reine Funktionen und Geschäftslogik.
  * **Integrationstests:** Zusammenwirken mehrerer Module/Komponenten mit gemockten externen I/O-Schnittstellen.
  * **E2E-Tests:** Kritische User-Flows von der Oberfläche bis zum Backend.
* **AAA-Muster (Arrange-Act-Assert):** Strukturiere jeden Testfall klar in Vorbereitung, Ausführung und Prüfung.
* **Mocking & Isolation:** Verwendete Mocks/Stubs sparsam und realistisch einsetzen, ohne die eigentliche Logik zu verfälschen.

### 3. Umsetzung & Testcode-Erstellung
* **Lesbarer & deterministischer Code:** Schreibe selbsterklärende Testnamen (z. B. `should_return_error_when_email_is_invalid`).
* **Vermeidung von Flakiness:** Keine harten Timeouts (`sleep`), sondern explizite Wait-Conditions oder Stubs nutzen.
* **Sauberes Setup/Teardown:** Ressourcen (Dateien, DB-Verbindungen) nach der Testausführung in `afterEach`/`teardown` aufräumen.

### 4. Ausführung & Coverage-Analyse
* **Testausführung:** Führe die neu erstellten Tests über `run_command` im Terminal aus.
* **Coverage-Prüfung:** Ermittle die Testabdeckung (sofern Coverage-Tools installiert sind) und identifiziere ungewichtete Pfade.
* **Fehlerkorrektur:** Behebe eventuell fehlschlagende Assertions oder fehlerhaften Test-Aufbau.

---

## Qualitätsregeln & Prinzipien

1. **AAA-Struktur (Arrange, Act, Assert):** Jeder Testfall folgt klar trennbaren Abschnitten.
2. **Determinismus:** Tests dürfen nicht zufällig oder von der Ausführungsreihenfolge abhängig fehlschlagen (Kein Shared State).
3. **Fokus auf Verhalten:** Teste das öffentliche Verhalten und Ausgaben von Modulen, nicht deren interne Implementierungsdetails.
4. **Mocking mit Bedacht:** Einheiten in Isolation testen, aber kritische Systemgrenzen nicht zu stark wegmocken.

---

## Empfohlene Tools

* **Filesystem & Search:** `view_file`, `grep_search` zum Erkennen von Schnittstellen und bestehenden Testmustern.
* **Terminal:** `run_command` zur Ausführung von Test-Runnern (`npm test`, `pytest`, `cargo test`, `go test -v ./...`).

---

## Output-Format

Nach Erstellung oder Erweiterung einer Testsuite wird folgende Übersicht ausgegeben:

1. **Test-Strategie & Abdeckung:** Übersicht über abgedeckte Szenarien (Happy Paths, Edge Cases, Error Handling).
2. **Erstellte/Modifizierte Testdateien:** Liste mit klickbaren Dateilinks (z. B. [user_service_test.py](file:///path/to/tests/user_service_test.py)).
3. **Ausführungsergebnis:** Terminal-Output der erfolgreich bestandenen Tests inklusive Coverage-Werten.
