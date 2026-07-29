---
name: web-researcher
description: Führt zielgerichtete, strukturierte Websuchen und Recherchen zu spezifischen Themen, Fachfragen, Dokumentationen oder Technologien durch und fasst die Ergebnisse fundiert mit Quellenangaben zusammen.
---

# Web Researcher (`/web-researcher`)

Dieser Skill dient der systematischen, tiefgehenden Recherche im Web zu konkreten Fragestellungen, technischen Themen, Frameworks/Bibliotheken, Fehlermeldungen oder Best Practices. Er sorgt dafür, dass Suchergebnisse kritisch evaluiert, strukturiert aufbereitet und mit verifizierbaren Quellen belegt werden.

## Wann verwenden?

Verwende diesen Skill, wenn:
- Eine fundierte Websuche oder Recherche zu einer spezifischen Frage oder einem Fachgebiet erforderlich ist.
- Aktuelle Informationen zu Bibliotheken, APIs, Tools oder Best Practices beschafft werden müssen.
- Lösungsansätze für seltene Fehlermeldungen oder komplexe technische Probleme gesucht werden.
- Eine vergleichende Analyse von Technologien, Frameworks oder Services im Web benötigt wird.

## Workflow

### 1. Suchanfrage analysieren & Suchstrategie formulieren
- **Kernfragen identifizieren:** Zerlege die Benutzeranfrage in präzise Suchbegriffe und Teilfragen.
- **Suchbegriffe optimieren:** Verwende gezielte Suchoperatoren, Fachbegriffe und Englische/Deutsche Äquivalente (z. B. offizielle Dokumentations-Begriffe, Fehlercodes, Spezifikationen).
- **Zielquellen definieren:** Priorisiere offizielle Dokumentationen, GitHub Repositories, Stack Overflow, wissenschaftliche Portale oder renommierte Tech-Blogs.

### 2. Durchführung der Websuche
- **Erstsynthese per Web-Suche:** Nutze das integrierte Suchwerkzeug (`search_web`), um relevante Treffer und URLs zu ermitteln.
- **Inhaltliche Vertiefung:** Lies gezielt die wichtigsten Dokumente und Webseiten über URL-Read-Tools (`read_url_content`), um exakte Details, Codebeispiele oder Spezifikationen zu extrahieren.
- **Quellenevaluation:** Überprüfe die Aktualität, Relevanz und Zuverlässigkeit der gefundenen Informationen. Sortiere veraltete oder unvollständige Antworten aus.

### 3. Aufbereitung & Synthese der Ergebnisse
- **Ergebnisse gliedern:** Formuliere eine klare Antwort auf die Ursprungsfrage mit strukturierter Unterteilung (z. B. Zusammenfassung, Detailanalyse, Codebeispiele, Vor-/Nachteile).
- **Quellennachweise einbinden:** Verlinke alle Kernaussagen und Fakten mit den entsprechenden URLs im Markdown-Format `[Quellentext](URL)`.
- **Implikationen & Fazit:** Gib eine finale Handlungsempfehlung oder Zusammenfassung für den Kontext des Benutzers ab.

## Qualitätsregeln

- **Faktentreue & Verifizierbarkeit:** Jede Hauptaussage muss durch mindestens eine verlässliche Quelle belegt sein. Keine Erfindungen oder Spekulationen ohne Quellennachweis.
- **Aktualität beachten:** Prüfe bei Software-Recherchen stets das Erscheinungsdatum oder die Version der Dokumentation.
- **Prägnanz & Struktur:** Nutze Listen, Tabellen und hervorgehobene Info-Boxen für maximale Lesbarkeit.
- **Synthese statt Linksammlung:** Fasse Inhalte in eigenen Worten präzise zusammen, anstatt nur Links ohne Kontext aufzulisten.

## Tool-Integration & Fallbacks

- **Primares Web-Search-Tool:** `search_web` (zur Ermittlung von Suchergebnissen und URLs).
- **Content-Retrieval-Tool:** `read_url_content` (zum Auslesen von statischen HTML/Markdown-Seiten und Dokumentationen).
- **Browser-Fallback (falls JS benötigt wird):** `read_browser_page` oder alternative HTTP-Tools.

## Output-Format

Ein Recherche-Ergebnis sollte folgendem Schema entsprechen:

```markdown
# Recherche: [Thema / Fragestellung]

## 📌 Zusammenfassung (TL;DR)
[Kurze, prägnante Antwort in 2-3 Sätzen]

## 🔍 Detailanalyse & Erkenntnisse

### 1. [Teilaspekt / Haupterkenntnis A]
- [Detaillierte Erläuterung]
- [Relevanter Fakt oder Code-Schnipsel]
- **Quelle:** [Name der Quelle](URL)

### 2. [Teilaspekt / Haupterkenntnis B]
- [Detaillierte Erläuterung]
- **Quelle:** [Name der Quelle](URL)

## 📊 Vergleich / Vor- & Nachteile (falls zutreffend)
| Kriterium | Option A | Option B |
| :--- | :--- | :--- |
| ... | ... | ... |

## 💡 Fazit & Handlungsempfehlung
[Konkrete Empfehlung für den Benutzer]
```
