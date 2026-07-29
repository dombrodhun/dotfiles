---
name: api-spec-builder
description: Spezifiziert und entwirft REST-, GraphQL- und gRPC-Schnittstellen (OpenAPI/Swagger, Schemas, Statuscodes, Mock-Daten). Erstellt zwingend eine zentrale Spezifikationsdatei im Ordner ./agents/. Aktivieren beim Definieren oder Anpassen von APIs.
---

# API Spec Builder (`/api-spec-builder`)

Der `api-spec-builder` Skill dient der professionellen Spezifikation, Strukturierung und Dokumentation von Anwendungsschnittstellen (APIs) wie REST, GraphQL oder gRPC. Er stellt sicher, dass Schnittstellen vor der Implementierung sauber typisiert, konsistent benannt und vollständig spezifiziert sind. Der Skill erzeugt verpflichtend eine zentrale Spezifikationsdatei im Ordner `./agents/` im Projekt-Root.

---

## Wann verwenden?

Verwende diesen Skill, wenn:
- Neue REST-, GraphQL- oder gRPC-Schnittstellen entworfen und spezifiziert werden sollen.
- Valide OpenAPI 3.0 / 3.1 (Swagger) Spezifikationen in YAML oder JSON benötigt werden.
- Request- und Response-Schemas, Query-Parameter sowie HTTP-Statuscodes definiert werden müssen.
- API-Authentifizierung (OAuth2, JWT, API-Keys) und Fehler-Formate standardisiert werden sollen.
- Mock-Daten oder DTOs (Data Transfer Objects) für Frontend- und Backend-Entwickler bereitgestellt werden sollen.

---

## Workflow

### 1. API-Anforderungs- & Architektur-Analyse
* **Architekturstil festlegen:** Evaluierung von REST, GraphQL oder gRPC basierend auf den Projektanforderungen.
* **Ressourcen & Endpunkte klären:** Identifikation von Hauptressourcen, Pfadstrukturen und HTTP-Methoden (`GET`, `POST`, `PUT`, `PATCH`, `DELETE`).
* **Sicherheits- & Auth-Konzept:** Festlegung von Authentifizierungsmechanismen (z. B. Bearer JWT, OAuth2 Scopes, API-Header).

### 2. Schemadokumentation & Typisierung
* **Payload- & Response-Schemas:** Exakte Typdefinition aller Felder (Strings, Numbers, Arrays, Enums, Nullables) inkl. Validierungsregeln (z. B. `minLength`, `pattern`, `format: email`).
* **HTTP-Statuscodes & Error Handling:** Definition von Standard-Erfolgs- (200, 201, 204) und Fehlerantworten (400 Bad Request, 401 Unauthorized, 403 Forbidden, 404 Not Found, 422 Unprocessable Entity, 500 Internal Error) nach einem einheitlichen Schema (z. B. RFC 7807 Problem Details).

### 3. Zwingende Ausgabe im Ordner `./agents/`
* Erstelle oder aktualisiere verpflichtend eine zentrale Spezifikationsdatei im Ordner `./agents/` im Projekt-Root (z. B. `./agents/openapi.yaml`, `./agents/openapi.json` oder `./agents/API.md`).
* **Inhalt der Datei unter `./agents/`:**
  * Vollständige OpenAPI/Swagger Spec (YAML/JSON) oder GraphQL `.graphqls` Schema.
  * Übersicht aller Endpunkte, HTTP-Methoden, Query-/Path-Parameter und Schemas.
  * Beispiele für Request- und Response-Payloads (Mock Data).

### 4. Mock-Daten & DTO-Generierung
* Erstellung von wiederverwendbaren Beispiel-Payloads (`examples`), die direkt für Frontend-Stubs oder Automated Tests genutzt werden können.

### 5. Validierung & Syntax-Check
* Prüfe die Gültigkeit der OpenAPI- oder GraphQL-Syntax mittels Linter/CLI-Tools über `run_command` im Terminal (sofern verfügbar, z. B. `spectral lint ./agents/openapi.yaml` oder `npx swagger-cli validate ./agents/openapi.yaml`).

---

## Qualitätsregeln & Prinzipien

1. **Zwingende Spezifikation unter `./agents/`:** Jede API-Definition MUSS als zentrale Datei (z. B. `./agents/openapi.yaml` oder `./agents/API.md`) im Ordner `./agents/` angelegt oder aktualisiert werden.
2. **Konsistente Naming-Conventions:** Verwende durchgängige Naming-Standards für Pfade (`kebab-case`) und JSON-Felder (`camelCase` oder `snake_case`).
3. **Explizites Error Handling:** Kein Endpunkt darf ohne definierte Fehler-Schemas und Statuscodes spezifiziert sein.
4. **Contract First:** Spezifiziere die Schnittstelle vollständig, bevor Backend- oder Frontend-Code geschrieben wird.

---

## Empfohlene Tools

* **Filesystem:** `write_to_file` zur Erstellung der Spezifikationsdatei im Ordner `./agents/` und von JSON-Mock-Dateien.
* **Terminal:** `run_command` zum Ausführen von API-Lintern (`spectral`, `swagger-cli`, `graphql-schema-linter`).

---

## Output-Format

Nach Erstellung oder Überarbeitung der API-Spezifikation wird folgende Übersicht ausgegeben:

1. **Spezifikationsdatei unter `./agents/`:** Klickbarer Link zur Datei (z. B. [./agents/openapi.yaml](file:///path/to/agents/openapi.yaml) oder [./agents/API.md](file:///path/to/agents/API.md)).
2. **Endpunkt-Übersicht:** Auflistung aller definierten Routen, Methoden und Auth-Anforderungen.
3. **Validierungsergebnis:** Status der Syntax- und Schema-Prüfung.
