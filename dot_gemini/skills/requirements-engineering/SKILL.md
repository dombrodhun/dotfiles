---
name: requirements-engineering
description: Erfasst, analysiert und strukturiert funktionale und nicht-funktionale Anforderungen, User Stories und Akzeptanzkriterien vor der Entwicklung.
---

# Requirements Engineering Skill (`/requirements-engineering`)

Verwende diesen Skill, wenn der Benutzer ein neues Feature, eine Produktidee oder eine komplexe Änderung beschreibt und diese vor der technischen Umsetzung präzise spezifiziert und strukturiert werden soll.

---

## Wann verwenden?
Verwende diesen Skill, wenn:
- Neue Features oder Produkte von Grund auf geplant werden.
- Vage oder unvollständige Anwendungsanforderungen vorliegen.
- Akzeptanzkriterien, User Stories oder Edge Cases definiert werden müssen.
- Lücken, Widersprüche oder implizite Annahmen im Fachkonzept identifiziert werden sollen.

---

## Workflow

1. **Anforderungs-Eingang & Erst-Analyse:**
   - Analysiere die Eingabe des Benutzers auf Vollständigkeit, Klarheit und Eindeutigkeit.
   - Prüfe ggf. bestehende Projektdokumente oder den aktuellen Stand der Codebase mit Such-/Lese-Tools.

2. **Lücken- & Edge-Case-Identifikation:**
   - Identifiziere fehlende Informationen, Unklarheiten und potenzielle Edge Cases (z. B. Fehlerbehandlung, Grenzwerte, Berechtigungen).
   - Stelle gezielte Klärungsfragen an den Benutzer, um Annahmen zu validieren.

3. **Strukturierung & Spezifikation:**
   - **User Stories:** Formuliere Anforderungen aus Benutzersicht (*"Als [Rolle] möchte ich [Ziel], um [Nutzen]"*).
   - **Akzeptanzkriterien:** Definiere messbare Prüfkriterien (z. B. nach dem Given-When-Then / Gegeben-Wenn-Dann Prinzip).
   - **Nicht-Funktionale Anforderungen (NFA):** Performance, Security, Skalierbarkeit, Usability.

4. **Dokumentation & Output im Ordner `./agents/`:**
   - Speichere die Spezifikation zwingend als eindeutige Markdown-Datei im Ordner `./agents/` im Projekt-Root (z. B. `./agents/REQUIREMENTS.md` für Hauptanforderungen oder `./agents/REQUIREMENTS-<feature-name>.md` bei spezifischen Features).

---

## Qualitätsregeln

- **Datei-Ablage im `./agents/`-Ordner:** Das Ergebnis **muss** immer als eindeutige Markdown-Datei (z. B. `./agents/REQUIREMENTS.md` oder `./agents/REQUIREMENTS-<feature-name>.md`) im Ordner `./agents/` des Projekts gespeichert werden.
- **Präzision & Testbarkeit:** Jedes Akzeptanzkriterium muss eindeutig testbar sein (keine schwammigen Begriffe wie "schnell" oder "benutzerfreundlich" ohne konkrete Messgrößen).
- **INVEST-Prinzip:** User Stories sollten Unabhängig (Independent), Verhandelbar (Negotiable), Wertvoll (Valuable), Schätzbar (Estimable), Klein (Small) und Testbar (Testable) sein.
- **KISS & DRY:** Vermeide Über-Spezifikation. Konzentriere dich auf den tatsächlichen fachlichen Nutzen ohne voreilige technische Festlegungen.

---

## MCP-Integration (Optional)

- **GitHub MCP:** (`list_issues`, `get_issue`, `create_issue`) – zum Verknüpfen mit GitHub Issues oder Epics.
- **Memory MCP:** (`create_entities`, `add_observations`) – zur dauerhaften Speicherung fachlicher Domänen-Konzepte.

---

## Output-Format

Erstelle die Anforderungsspezifikation in folgendem Markdown-Format:

```markdown
# Anforderungsspezifikation: [Feature/Projekt-Name]

## 1. Ziel & Kontext
* **Beschreibung:** <Kurze Zusammenfassung>
* **Zielgruppe / Akteure:** <Hauptnutzer / Rollen>

## 2. User Stories & Akzeptanzkriterien

### US-01: [Titel der Story]
* **Formulierung:** Als [Rolle] möchte ich [Funktion], um [Nutzen].
* **Akzeptanzkriterien:**
  - [ ] **Gegeben** [Ausgangslage], **Wenn** [Aktion], **Dann** [Ergebnis]
  - [ ] [Kriterium 2]

## 3. Nicht-Funktionale Anforderungen (NFA)
* **Performance:** <z. B. Antwortzeit < 200ms>
* **Sicherheit / Datenschutz:** <z. B. Auth-Pflicht, DSGVO>

## 4. Offene Fragen & Annahmen
* [ ] <Offener Punkt / Frage an den Benutzer>
```
