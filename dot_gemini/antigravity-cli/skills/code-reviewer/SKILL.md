---
name: code-reviewer
description: Führt eine strukturierte Code-Review-Analyse bezüglich Security, Performance, Type-Safety und Clean-Code-Prinzipien durch und dokumentiert die Ergebnisse in einer nummerierten Markdown-Datei im Ordner .agents/reviews/ inklusive Status-Tracking für gefundene Fehler.
---

# Code Reviewer Skill

Dieser Skill dient der Durchführung strukturierter Code-Reviews und Audits. Alle Ergebnisse werden nachvollziehbar in nummerierten Berichten im Ordner `.agents/reviews/` im Projekt-Root abgelegt und ermöglichen das Nachverfolgen des Bearbeitungsstatus gefundener Feststellungen.

## Wann verwenden?
Verwende diesen Skill, wenn:
- Der Benutzer ein Code-Review, Audit oder eine Qualitätsprüfung von Dateien, Modulen oder Diffs wünscht.
- Ein neues Feature oder ein Refactoring vor dem Merge/Commit geprüft werden soll.

## Workflow

1. **Vorbereitung & Nummernvergabe:**
   - Prüfe, ob der Ordner `.agents/reviews/` im Wurzelverzeichnis des Projekts existiert. Erstelle ihn, falls erforderlich.
   - Ermittle die bisher höchste Nummer existierender Review-Dateien (z. B. `.agents/reviews/001-code-review.md`).
   - Wähle die nächste dreistellige Sequenznummer (z. B. `001`, `002`, `003`) für den neuen Bericht: `.agents/reviews/<NR>-code-review.md` (z. B. `.agents/reviews/001-code-review.md`).

2. **Datei- & Diff-Inspektion:**
   - Untersuche die relevanten Dateien oder Diffs gründlich mit den Lesen/Grep-Tools.
   - Analysiere den Code anhand folgender Kernkriterien:
     - **Type Safety:** Explizite und strikte Typisierung, Vermeidung von unbegründetem `any` oder unvollständigen Typen.
     - **Performance:** Vermeidung unnötiger Re-Renders, synchroner Sperren, redundanter Schleifen oder unoptimierter Abfragen.
     - **Security & Data:** Validierung von Benutzereingaben, Vermeidung von Injection-Lücken, Sensitive Data Leaks oder unsicherer Fehlerbehandlung.
     - **Architecture & Style:** Einhaltung von KISS-, DRY- und Modularitäts-Prinzipien.

3. **Dokumentation in der Review-Datei (`.agents/reviews/<NR>-code-review.md`):**
   Erstelle den Review-Bericht in der ermittelten Nummerierungs-Datei. Verwende folgende Struktur:

   ```markdown
   # Code Review Bericht #<NR>

   - **Datum:** YYYY-MM-DD
   - **Geprüfte Dateien:** [dateiname](file:///pfad/zur/datei)
   - **Status-Zusammenfassung:** X Offen | Y In Bearbeitung | Z Erledigt

   ---

   ## Befunde & Fehler-Tracking

   ### 🔴 Kritische Probleme (Must-Fix)
   #### [FINDING-01] Beschreibung des Problems
   - **Datei & Zeile:** [filename.ext:L12-L20](file:///path/to/filename.ext#L12-L20)
   - **Status:** `Offen` <!-- Optionen: Offen (Noch zu bearbeiten), In Bearbeitung, Erledigt (Behoben), Ignoriert (WontFix) -->
   - **Problem:** Detaillierte Beschreibung der Schwachstelle oder des Fehlers.
   - **Lösungsvorschlag:** Empfohlener Fix mit Code-Beispiel.

   ### 🟡 Verbesserungspotenzial (Should-Fix)
   #### [FINDING-02] Beschreibung des Potentials
   - **Datei & Zeile:** [filename.ext:L45](file:///path/to/filename.ext#L45)
   - **Status:** `Offen` <!-- Optionen: Offen (Noch zu bearbeiten), In Bearbeitung, Erledigt (Behoben), Ignoriert (WontFix) -->
   - **Problem:** Erklärung der unschönen Stelle / Performance-Engpass.
   - **Lösungsvorschlag:** Empfohlener Ansatz.

   ### 🟢 Gut gelöst (Highlights)
   - Positive Aspekte und Vorzeigestellen des Codes.

   ---

   ## Status-Übersicht (Matrix)
   | ID | Kategorie | Beschreibung | Status |
   |---|---|---|---|
   | FINDING-01 | Must-Fix | ... | 🔴 Offen |
   | FINDING-02 | Should-Fix | ... | 🔴 Offen |
   ```

4. **Fehler-Status-Definitionen:**
   Verwende für jeden Befund einen der folgenden vordefinierten Statuswerte:
   - `Offen` (oder `Noch zu bearbeiten`): Das Problem wurde identifiziert, ist jedoch noch ungelöst.
   - `In Bearbeitung`: Die Korrektur wird aktuell umgesetzt.
   - `Erledigt` (oder `Behoben`): Das Problem wurde durch Code-Änderungen erfolgreich gelöst und verifiziert.
   - `Ignoriert` (oder `WontFix`): Bewusste Entscheidung, den Befund nicht zu ändern (mit Begründung).

5. **Ergebnispräsentation:**
   - Informiere den Benutzer kurz über die Erstellung des Berichts.
   - Verlinke direkt auf die erstellte Datei: `[.agents/reviews/<NR>-code-review.md](file:///pfad/zu/.agents/reviews/<NR>-code-review.md)`.
