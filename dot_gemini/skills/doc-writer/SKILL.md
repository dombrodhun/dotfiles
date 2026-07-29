---
name: doc-writer
description: Erstellt und pflegt technische Dokumentationen (READMEs, API-Docs, CHANGELOGs, In-Code Docstrings). Aktivieren beim Schreiben oder Aktualisieren von Projekt-Dokumentation.
---

# Doc Writer (`/doc-writer`)

Der `doc-writer` Skill dient der Erstellung, Strukturierung und kontinuierlichen Pflege technischer Dokumentation. Er sorgt für verständliche Projekt-READMEs, saubere In-Code-Docstrings für komplexe Geschäftslogik, normierte CHANGELOGs und Entwickler-Anleitungen.

---

## Wann verwenden?

Verwende diesen Skill, wenn:
- Ein neues Projekt oder Modul dokumentiert werden soll (z. B. Erstellung einer `README.md`).
- API-Dokumentation, Tutorials oder Architektur-Guides verfasst werden müssen.
- In-Code Docstrings (JSDoc, PyDoc, GoDoc, Rustdoc) für komplexe Schnittstellen und Funktionen ergänzt werden sollen.
- Ein `CHANGELOG.md` für neue Releases aktualisiert werden muss.
- Bestehende Dokumentation veraltet ist und an neue Code-Änderungen angepasst werden muss.

---

## Workflow

### 1. Zielgruppen- & Bedarfsanalyse
* **Zielgruppe bestimmen:** Unterscheide klar zwischen Entwickler-Dokumentation (Internal Code / API), Integrator-Dokumentation (Public API / SDK) und Endnutzer-Guides.
* **Codebase-Inspektion:** Untersuche betroffene Module, Exports und Konfigurationen mit `view_file` und `grep_search`.

### 2. Projekt-Dokumentation (`README.md` & Guides)
* **README-Struktur:**
  - **Titel & Kurzbeschreibung:** Welches Problem löst das Projekt?
  - **Features:** Prägnante Aufzählung der Hauptfunktionen.
  - **Installation & Setup:** Exakte Befehle zur Inbetriebnahme.
  - **Schnellstart (Quickstart):** Lauffähiges Minimalbeispiel.
  - **Konfiguration:** Übersicht über Umgebungsvariablen (`.env`) und Flags.
  - **Architektur & Struktur:** Kurze Übersicht über die Ordner- und Modulstruktur.

### 3. In-Code Docstrings & Inline-Dokumentation
* **Fokus auf Nicht-Offensichtliches:** Schreibe Docstrings nur für komplexe Geschäftslogik, Edge Cases oder öffentliche API-Grenzen. Vermeide triviale Kommentare (Kein "Kommentar um des Kommentars willen").
* **Standards einhalten:** Nutze sprachtypische Standards (TypeScript: JSDoc `@param`, `@returns`; Python: Google/NumPy-Docstrings; Go: GoDoc-Kommentare).

### 4. CHANGELOG & Release-Dokumentation
* **Keep a Changelog Standard:** Strukturiere `CHANGELOG.md` nach Versionen (`Semantic Versioning`) und Kategorien:
  - `Added` für neue Features.
  - `Changed` für Änderungen an bestehender Funktionalität.
  - `Deprecated` für in Kürze entfallende Features.
  - `Removed` für entfernte Features.
  - `Fixed` für Bugfixes.
  - `Security` bei Sicherheitsrelevanten Behebungen.

### 5. Validierung & Link-Check
* Prüfe Markdown-Syntax, funktionierende Code-Beispiele und Korrektheit aller relativen und absoluten Pfadlinks.

---

## Qualitätsregeln & Prinzipien

1. **Präzision & Kürze:** Bevorzuge prägnante, direkte Formulierungen. Vermeide blumige Floskeln.
2. **Echte Code-Beispiele:** Verwende nur tatsächlich funktionierende, getestete Code-Beispiele ohne unvollständige Pseudo-Syntax.
3. **Synchronität:** Dokumentation darf niemals im Widerspruch zum tatsächlichen Quellcode stehen.
4. **Self-Explanatory Code First:** Guter Code erklärt sich primär durch klare Namensgebung. Docstrings dienen der Erklärung des "Warum" (Rationals), nicht des offensichtlichen "Was".

---

## Empfohlene Tools

* **Filesystem:** `write_to_file`, `replace_file_content`, `view_file` zur Erstellung und Aktualisierung von Markdown- und Code-Dateien.
* **Search:** `grep_search` zum Auffinden unvollständiger Docstrings oder veralteter Dokumentationshinweise.

---

## Output-Format

Nach der Erstellung oder Überarbeitung wird eine Übersicht ausgegeben:

1. **Dokumentierte Komponenten:** Zusammenfassung der erstellten/überarbeiteten Dokumente.
2. **Geänderte Dateien:** Liste aller Dateien mit klickbaren Links (z. B. [README.md](file:///path/to/README.md), [CHANGELOG.md](file:///path/to/CHANGELOG.md)).
3. **Zusammenfassung der Inhalte:** Kurze Aufzählung der hinzugefügten Abschnitte oder Docstrings.
