---
name: database-architect
description: Entwirft und optimiert Datenbank-Schemas, ER-Diagramme (Mermaid), SQL/NoSQL-Migrationen und Abfragen. Erstellt zwingend eine zentrale Dokumentationsdatei im Ordner ./agents/. Aktivieren beim Planen oder Anpassen von Datenbanken.
---

# Database Architect (`/database-architect`)

Der `database-architect` Skill dient der professionellen Modellierung, Dokumentation und Optimierung von Datenbank-Schemas (relational wie PostgreSQL/MySQL/SQLite sowie NoSQL wie MongoDB/Redis). Er stellt Datenintegrität, Performanz und klare Entitätsbeziehungen sicher und dokumentiert das Gesamtschema verpflichtend in einer zentralen Markdown-Datei im Ordner `./agents/` im Projekt-Root.

---

## Wann verwenden?

Verwende diesen Skill, wenn:
- Ein neues Datenmodell oder Datenbank-Schema von Grund auf entworfen wird.
- Bestehende Tabellen, Dokumente oder Relationen erweitert oder umstrukturiert werden (Migrationen).
- Entity-Relationship-Diagramme (ER-Diagramme) zur Veranschaulichung benötigt werden.
- SQL-Abfragen, Indizes oder ORM-Modelle (z. B. Prisma, Drizzle, TypeORM, SQLAlchemy) optimiert werden müssen.
- Datenvalidierungen, Constraints und Integritätsregeln definiert werden sollen.

---

## Workflow

### 1. Domänen- & Datenbedarfsanalyse
* **Anforderungen prüfen:** Identifiziere Entitäten, Attribute, Datentypen und Beziehungstypen (1:1, 1:N, N:M).
* **Technologie-Wahl:** Bestimme basierend auf Konsistenz-, Flexibilitäts- und Skalierungsanforderungen das Zielsystem (RDBMS vs. NoSQL / Key-Value).
* **Nutzungsmuster:** Identifiziere schreib- und leseintensive Pfade für gezieltes Indexing.

### 2. Schema-Design & Relationen
* **Normalisierung & Modellierung:** Wende für RDBMS die 3. Normalform (3NF) an; wähle für NoSQL gezieltes Embedding vs. Referencing.
* **Constraints & Schlüssel:** Definiere eindeutige Primary Keys (UUID / Auto-Increment), Foreign Keys mit `ON DELETE`-Kaskaden und `NOT NULL`/`CHECK`/`UNIQUE`-Constraints.
* **Indexing-Strategie:** Setze Indizes für häufig gefilterte, sortierte oder verknüpfte Spalten an, ohne die Schreibleistung unnötig zu beeinträchtigen.

### 3. Zwingende Ausgabe im Ordner `./agents/` (`./agents/DATABASE.md`)
* Erstelle oder aktualisiere verpflichtend eine zentrale Markdown-Datei im Ordner `./agents/` im Projekt-Root (standardmäßig `./agents/DATABASE.md` oder `./agents/SCHEMA.md`).
* **Inhalt der `./agents/DATABASE.md`:**
  * **Mermaid ER-Diagramm:** Graphische Visualisierung aller Entitäten und deren Verknüpfungen.
  * **Entitäten-Katalog:** Tabellarische Übersicht aller Felder, Datentypen, Constraints und Beschreibungen.
  * **Migrations- & Setup-Anleitung:** Schritt-für-Schritt-Befehle zur Ausführung von Datenbank-Migrationen oder Seeds.

### 4. Erstellung von Migrations-Skripten & ORM-Code
* Generiere strukturierte, nummerierte und idempotente SQL-Migrationsskripte (z. B. `V1__init_schema.sql`) oder ORM-Schema-Definitionen.
* Stelle sicher, dass Up- und Down-Migrationen (Rollback-Fähigkeit) definiert sind.

### 5. Performance- & Integritäts-Check
* Prüfe auf N+1-Query-Probleme in ORM-Abfragen.
* Verifiziere das Schema mittels Datenbank-CLI oder ORM-CLI über `run_command` im Terminal (sofern verfügbar).

---

## Qualitätsregeln & Prinzipien

1. **Zwingende Dokumentation unter `./agents/`:** Jede Schema-Änderung MUSS in einer zentralen `.md`-Datei im Ordner `./agents/` (z. B. `./agents/DATABASE.md`) mit aktuellem Mermaid-Diagramm festgehalten werden.
2. **Referentielle Integrität:** Verlasse dich nicht allein auf Anwendungslogik; nutze Foreign Keys und Constraints auf Datenbankebene.
3. **Idempotenz:** Migrationen müssen beliebig oft ohne unvorhergesehene Fehler ausführbar sein.
4. **Keine Breaking Changes ohne Migration:** Datenverlust bei Tabellenanpassungen zwingend vermeiden.

---

## Empfohlene Tools

* **Filesystem:** `write_to_file` zur Erstellung von `./agents/DATABASE.md` und Migrationsdateien.
* **Terminal:** `run_command` zum Ausführen von DB-Migrations-CLIs (`prisma migrate`, `alembic upgrade`, `flyway`, etc.).

---

## Output-Format

Nach dem Entwurf oder der Modifikation wird folgende Zusammenfassung bereitgestellt:

1. **Agent-Dokudatei:** Link zur neu erstellten oder aktualisierten Dokumentation (z. B. [./agents/DATABASE.md](file:///path/to/agents/DATABASE.md)).
2. **Erstellte Migrationsskripte / ORM-Dateien:** Übersicht aller generierten Schema-Dateien.
3. **Mermaid ER-Diagramm Vorschau:** Kurze Zusammenfassung der modellierten Entitäten und Beziehungen.
