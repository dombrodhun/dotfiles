---
name: project-manager
description: Agiert als Projektleiter, plant Meilensteine, strukturiert Epics/Arbeitspakete und überwacht den Projektfortschritt in einer zentralen Roadmap. Erstellt zwingend eine Dokumentation im Ordner ./agents/. Aktivieren beim Planen, Nachverfolgen oder Koordinieren von Projekten.
---

# Project Manager (`/project-manager`)

Der `project-manager` Skill dient der strategischen Projektleitung, Meilensteinplanung und Fortschrittsüberwachung. Er behält den Gesamtüberblick über das Projekt, definiert klare Meilensteine und Arbeitspakete, identifiziert Risiken oder Blockaden und dokumentiert den aktuellen Projektstatus verpflichtend in einer zentralen `ROADMAP.md` im Ordner `./agents/`.

---

## Wann verwenden?

Verwende diesen Skill, wenn:
- Ein neues Projekt strukturiert, in Phasen unterteilt und mit Meilensteinen versehen werden soll.
- Der aktuelle Fortschritt eines Projekts analysiert und der Status aller Epics/Tasks aktualisiert werden muss.
- Eine zentrale Projekt-Roadmap (`./agents/ROADMAP.md`) erstellt oder gepflegt werden soll.
- Unklarheit darüber besteht, welche Arbeitspakete als Nächstes umgesetzt werden sollten.
- Risiken, Abhängigkeiten zwischen Modulen oder Entwicklungs-Blockaden identifiziert werden müssen.

---

## Workflow

### 1. Gesamtprojekt- & Statusanalyse
* **Repository-Inspektion:** Untersuche bestehende Dokumente (`./agents/REQUIREMENTS.md`, `./agents/ARCHITECTURE.md`), den Quellcode und offene Issues/Tasks.
* **Zieldefinition:** Kläre das übergeordnete Ziel des Projekts und die Kern-Deliverables.

### 2. Meilensteinplanung & Arbeitspaket-Strukturierung
* **Meilenstein-Phasen:** Unterteile das Projekt in logische, zeitlich oder funktionale Phasen (z. B. `M1: MVP & Kern-Architektur`, `M2: Frontend-Anbindung & API`, `M3: Testing, Security & Release`).
* **Epics & Tasks:** Brich Meilensteine in konkrete, schätzbare und zuweisbare Arbeitspakete (Epics/Tasks) herunter.
* **Skill-Zuordnung:** Empfehle für jedes Arbeitspaket den passenden Fach-Skill (z. B. `/architecture-design`, `/database-architect`, `/frontend-design`, `/test-engineer`).

### 3. Zwingende Ausgabe im Ordner `./agents/` (`./agents/ROADMAP.md`)
* Erstelle oder aktualisiere verpflichtend eine zentrale Markdown-Datei im Ordner `./agents/` im Projekt-Root (`./agents/ROADMAP.md`).
* **Inhalt der `./agents/ROADMAP.md`:**
  * **Projekt-Vision & Status-Dashboard:** Gesamtfortschritt in % und aktuelle Phase.
  * **Meilenstein-Übersicht:** Tabelle aller Meilensteine inkl. Zielkriterien, Zielterminen/Sprint-Zuordnungen und Status (`Offen`, `In Bearbeitung`, `Erledigt`).
  * **Task-Backlog & Matrix:** Detaillierte Liste der Aufgaben je Meilenstein mit Status und ausführendem Skill.
  * **Risiken & Blockaden:** Aktuelle Hürden oder technische Abhängigkeiten.

### 4. Fortschritts-Tracking & Status-Updates
* Vergleiche bei erneuter Ausführung den Ist-Zustand des Repositories mit den Zielen in `./agents/ROADMAP.md` und aktualisiere die Statuswerte (`Offen` $\to$ `In Bearbeitung` $\to$ `Erledigt`).

---

## Qualitätsregeln & Prinzipien

1. **Zwingende Roadmap unter `./agents/`:** Der Projektstatus MUSS kontinuierlich in `./agents/ROADMAP.md` im Projekt-Root gepflegt werden.
2. **Klarheit & Priorisierung:** Meilensteine müssen sequentiell und nach Abhängigkeiten priorisiert sein (Kritischer Pfad).
3. **Messbare Zielkriterien:** Jeder Meilenstein besitzt ein klares Abnahmekriterium ("Definition of Done").
4. **Pragmatismus:** Vermeide unnötigen Bürokratie-Overhead. Die Roadmap soll Entwicklern und KI-Agenten sofort Orientierung bieten.

---

## Empfohlene Tools

* **Filesystem:** `write_to_file`, `replace_file_content`, `view_file` zur Pflege von `./agents/ROADMAP.md`.
* **Search & Inspect:** `grep_search`, `list_dir` zur Feststellung des tatsächlichen Implementierungsstands.

---

## Output-Format

Bei Ausführung des Projektleiters wird folgende Übersicht bereitgestellt:

1. **Projektleiter-Dashboard:** Status der aktuellen Phase und prozentualer Gesamtfortschritt.
2. **Roadmap-Datei:** Link zur zentralen Dokumentation ([./agents/ROADMAP.md](file:///path/to/agents/ROADMAP.md)).
3. **Nächste Handlungsempfehlung:** Konkreter Vorschlag, welches Arbeitspaket mit welchem Fach-Skill als Nächstes gestartet werden sollte.
