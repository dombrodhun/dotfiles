---
name: skill-creator
description: Erstellt, strukturiert und validiert neue Agent-Skills (SKILL.md) gemäß dem offiziellen Agent-Skills-Standard.
---

# Skill Creator (`/skill-creator`)

Verwende diesen Skill, wenn ein neuer KI-Skill erstellt, ein bestehendes `SKILL.md` überarbeitet oder eine standardisierte Skill-Struktur generiert werden soll.

---

## 1. Skill-Architektur & Standard

Jeder Skill wird als eigener Ordner unter `/home/dominik/.gemini/skills/<skill-name>/` angelegt und enthält mindestens eine `SKILL.md`.

### Struktur einer `SKILL.md`:
1. **YAML Frontmatter (Erforderlich):**
   ```yaml
   ---
   name: <skill-name-in-kebab-case>
   description: Präzise 1-2 Sätze, was der Skill tut und wann er aktiviert werden soll.
   ---
   ```
2. **Markdown Body (Instruktionen & Workflow):**
   - **Titel & Kurzbeschreibung**
   - **Wann aktivieren (Trigger & Anwendungskontext)**
   - **Schritt-für-Schritt Workflow**
   - **Qualitätskriterien & Regelsätze**
   - **Optionale MCP-Integrationen** (mit Fallbacks für Standard-Tools)
   - **Erwartetes Output-Format**

---

## 2. Erstellungs-Workflow für neue Skills

Wenn der Skill-Creator aufgerufen wird, führe folgende Schritte durch:

### Schritt 1: Anforderungen erfassen & klären
1. **Skill-Name:** Eindeutiger Name in `kebab-case` (z. B. `requirements-engineering`, `refactor`).
2. **Zweck & Ziel:** Welches konkrete Problem löst der Skill?
3. **Input & Kontext:** Welche Dateien, Diffs oder Benutzereingaben werden benötigt?
4. **Tool-Bedarf:** Welche Werkzeuge (Filesystem, Terminal, Web-Search, MCPs) kommen zum Einsatz?

### Schritt 2: Ordner & Datei anlegen
Erstelle das Zielverzeichnis und die `SKILL.md`-Datei:
- **Zielpfad:** `/home/dominik/.gemini/skills/<skill-name>/SKILL.md`

### Schritt 3: Inhaltsstrukturierung nach Vorlage
Befülle die `SKILL.md` nach folgendem Standard-Schema:

```markdown
---
name: <skill-name>
description: <description>
---

# <Skill Name>

<Kurze Zusammenfassung des Zweckes>

## Wann verwenden?
Verwende diesen Skill, wenn:
- <Trigger 1>
- <Trigger 2>

## Workflow

1. **Kontextanalyse & Inspektion:**
   - <Schritt 1>
2. **Durchführung & Umsetzung:**
   - <Schritt 2>
3. **Validierung & Qualitätssicherung:**
   - <Schritt 3>

## Qualitätsregeln
- **Rule 1:** ...
- **Rule 2:** ...

## MCP-Integration (Optional)
- **Empfohlene MCPs:** `<server>/<tool>` (Fallback: Standard-CLI/Filesystem)

## Output-Format
- <Formatvorgabe>
```

### Schritt 4: Übersicht in `usefull-skills.md` aktualisieren
Markiere den erstellten Skill in der Datei [`usefull-skills.md`](file:///home/dominik/.gemini/skills/usefull-skills.md) als **Erstellt** und verlinke auf die neue `SKILL.md`.

---

## 3. Validierungs-Checkliste

Stelle bei jedem neu erstellten Skill sicher:
- [ ] **Namensgleichheit:** Ordnername entspricht exakt dem `name`-Feld im YAML-Frontmatter.
- [ ] **Eindeutigkeit:** `description` erklärt präzise, wann der Skill geladen werden muss.
- [ ] **Pfade & Links:** Alle Dateireferenzen nutzen das Format `[Text](file:///absoluter/pfad)`.
- [ ] **Pragmatismus:** Workflow folgt KISS & DRY-Prinzipien ohne unnötige Abstraktionen.
- [ ] **Sprache:** Instruktionen sind klar, präzise und in deutscher Sprache verfasst.
