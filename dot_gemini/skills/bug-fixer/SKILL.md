---
name: bug-fixer
description: Führt eine systematische Fehleranalyse (Root Cause Analysis) durch, erstellt reproduzierbare Regressionstests und behebt Bugs nachhaltig an der Ursache. Aktivieren bei Testfehlschlägen, Laufzeitfehlern, Stacktraces oder Bug-Reports.
---

# Bug Fixer (`/bug-fixer`)

Der `bug-fixer` Skill dient der systematischen, empirischen Fehleranalyse und nachhaltigen Ursachenbehebung (Root Cause Analysis) in Codebasen. Er stellt sicher, dass Fehler nicht durch oberflächliche Symptombekämpfung kaschiert, sondern an der echten Ursache behoben und durch automatisierte Regressionstests dauerhaft abgesichert werden.

---

## Wann verwenden?

Verwende diesen Skill, wenn:
- Ein automatisierter Test fehlschlägt oder ein Build-Fehler auftritt.
- Ein Laufzeitfehler, Crash, Exception-Traceback oder unerwartetes Verhalten vorliegt.
- Ein Bug-Report oder Ticket vorliegt, das analysiert und behoben werden muss.
- Unerklärliches Verhalten in einer bestehenden Funktion untersucht werden soll.

---

## Workflow

### 1. Log- & Kontext-Inspektion (Root Cause Analysis)
* **Empirische Beweiserhebung:** Lies stets den vollständigen, unverkürzten Error-Log oder Stacktrace aus. Stelle NIEMALS Diagnosen ohne konkrete Log-Evidenz.
* **Upstream-Rückverfolgung:** Traciere den Datenfluss von der Fehlerquelle zurück bis zum eigentlichen Ursprung (z. B. fehlerhafte Parameterübergabe, ungültiger Initialzustand, Race Condition).
* **Quellcode-Inspektion:** Überprüfe die betroffenen Codestellen und Typdefinitionen gründlich mit Dateiansichts- und Such-Tools.

### 2. Reproduktion & Regressionstest
* **Minimaler Reproduktionsfall:** Schreibe oder isoliere einen minimalen Unit- oder Integrationstest, der das Fehlverhalten zuverlässig auslöst (Red State).
* **Test-Verifikation:** Führe den Test aus, um zu bestätigen, dass er exakt aus dem vermuteten Grund fehlschlägt.

### 3. Gezielte Ursachenbehebung (Root Cause Fix)
* **Keine Symptombekämpfung:** Maskiere niemals Symptome (z. B. stumme `try/catch`-Blöcke, Dummy-Fallbacks, Auskommentieren fehlschlagender Assertions oder Ändern der Testerwartung an ein falsches Verhalten).
* **Präzise Korrektur:** Behebe den Fehler direkt am Ursprung (z. B. Absicherung von Null/Undefined, Korrektur der Geschäftslogik, Fixen von Datentypen oder Algorithmen).
* **API- & Aufrufer-Konsistenz:** Wenn Methodensignaturen geändert werden, passe alle Aufrufstellen im Projekt an.

### 4. Validierung & Qualitätssicherung
* **Regressionstest ausführen:** Führe den erstellten Test erneut aus und verifiziere den Erfolg (Green State).
* **Gesamttestsuite prüfen:** Führe relevante bestehende Tests aus, um sicherzustellen, dass keine Regressionen oder Seiteneffekte entstanden sind.

---

## Qualitätsregeln & Prinzipien

1. **Inspektion vor Diagnose:** Keine Mutmaßungen über Fehlerursachen anstellen ohne vorherige Inspektion von Logs, Stacktraces oder Quellcode.
2. **Keine Symptom-Patches:** Fehler dürfen niemals durch das Löschen von Tests, das Ersetzen durch Stubs oder das Stummschalten von Exceptions "behoben" werden.
3. **Regressionstest-Pflicht:** Jeder Bugfix sollte idealerweise von einem Test begleitet werden, der ein erneutes Auftreten verhindert.
4. **KISS & DRY:** Die Behebung sollte so einfach und minimalinvasiv wie möglich sein, ohne unnötiges Refactoring unbeteiligter Komponenten.

---

## Empfohlene Tools

* **Filesystem & Search:** `grep_search`, `view_file` zur Inspektion betroffener Dateien.
* **Terminal:** `run_command` zur Ausführung von Testsuiten (z. B. `pytest`, `npm test`, `go test`).

---

## Output-Format

Nach erfolgreicher Fehlerbehebung wird ein übersichtlicher Bericht ausgegeben:

1. **Ursachenanalyse (Root Cause):** Kurze Erklärung des Identifizierten Fehlers und dessen Entstehung.
2. **Geänderte Dateien:** Aufzählung aller modifizierten Dateien inklusive klickbarer Dateilinks (z. B. `[file.py](file:///path/to/file.py#L42)`).
3. **Regressionstest:** Pfad zum erstellten/angepassten Testfall.
4. **Verifikationsergebnis:** Nachweis der erfolgreichen Testausführung (z. B. Log-Auszug des bestandenen Tests).
