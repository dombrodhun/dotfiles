---
name: refactoring
description: Führt strukturierte, sichere und verhaltensneutrale Refactorings durch, um Code-Qualität, Lesbarkeit und Wartbarkeit nach KISS- und DRY-Prinzipien zu verbessern.
---

# Code Refactoring (`refactoring`)

Dieser Skill steuert die systematische und sichere Überarbeitung von bestehendem Code. Ziel ist es, die Codequalität, Lesbarkeit, Modularität und Wartbarkeit zu maximieren, ohne das externe Verhalten der Anwendung oder API-Verträge zu verändern.

---

## Wann verwenden?
Verwende diesen Skill, wenn:
- Code-Duplizierung (DRY-Verletzung) beseitigt werden soll.
- Zu komplexe, verschachtelte oder unübersichtliche Funktionen ("Code Smells", hohe zyklomatische Komplexität) strukturiert werden müssen.
- Veraltete Muster oder unstrukturierte Module modifiziert und modernisiert werden sollen.
- Vor größeren Funktionserweiterungen eine saubere Grundlage geschaffen werden soll.

---

## Workflow

1. **Kontextanalyse & Code-Inspektion:**
   - Analysiere das Zielmodul und dessen Abhängigkeiten im Gesamtsystem.
   - Identifiziere bestehende Unit- und Integrationstests für das Zielmodul.
   - Lokalisiere konkrete Code Smells, Duplikate oder Unklarheiten in der Struktur.

2. **Test-Absicherung (Voraussetzung):**
   - Führe die vorhandene Testsuite vor jeglicher Änderung aus, um den Ausgangszustand zu bestätigen.
   - Falls keine ausreichenden Tests existieren, erstelle vor dem Refactoring grundlegende Regressionstests.

3. **Inkrementelle Umsetzung (Step-by-Step Refactoring):**
   - Wende etablierte Refactoring-Muster an (z. B. *Extract Method*, *Rename Symbol*, *Replace Magic Number*, *Decompose Conditional*).
   - Führe Modifikationen in kleinen, atomaren Schritten durch.
   - Wahre bestehende API-Verträge und Methodensignaturen.

4. **Validierung & Qualitätssicherung:**
   - Führe die Tests und Type-Checker nach jedem Teil-Schritt aus.
   - Stelle sicher, dass keine unabsichtlichen Seiteneffekte oder Performance-Einbußen entstehen.

---

## Qualitätsregeln
- **Verhaltensneutralität:** Das funktionale Verhalten des Gesamtsystems darf durch das Refactoring nicht verändert werden.
- **KISS & DRY First:** Priorisiere Einfachheit und Klarheit vor komplexen Abstraktionen (Rule of Three beachten).
- **API-Verträge wahren:** Öffentliche Schnittstellen und Typdefinitionen bleiben abwärtskompatibel.
- **Keine Symptombekämpfung:** Exceptions nicht unterdrücken oder durch Fallbacks verschleiern.
- **Fokussierung:** Refactoring und funktionale Feature-Entwicklung nicht in einem einzigen Schritt vermischen.

---

## MCP-Integration (Optional)
- **GitHub MCP:** (`github/get_file_contents`, `github/create_pull_request`) zum Abrufen von Code-Dateien und Erstellen fokussierter Refactoring-PRs.
- **Fallback:** Nutzen der Standard-Dateisystem-Tools (`view_file`, `replace_file_content`, `run_command`).

---

## Output-Format
Der Skill liefert nach Durchführung eines Refactorings folgenden strukturierten Bericht:
1. **Zusammenfassung:** Kurze Beschreibung der Optimierungen.
2. **Geänderte Dateien:** Liste aller angepassten Dateien als Links im Format `[filename](file:///pfad)`.
3. **Angewendete Refactoring-Muster:** Detaillierte Aufzählung der strukturellen Anpassungen.
4. **Validierungsstatus:** Testergebnisse und Linter-Checks vor und nach dem Refactoring.
