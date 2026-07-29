---
name: performance-profiler
description: Analysiert und behebt Performance-Engpässe (Laufzeit-Komplexität, Memory Leaks, Bundle-Größen, Render-Zyklen, DB-Abfragen). Aktivieren bei trägem Verhalten oder zur Performance-Optimierung.
---

# Performance Profiler (`/performance-profiler`)

Der `performance-profiler` Skill dient der datengestützten Analyse, Diagnose und Behebung von Performance-Problemen und Ressourcen-Engpässen in Softwareanwendungen. Er optimiert Ausführungszeiten, Speichereffizienz, Netzwerk-Payloads und Rendering-Zyklen.

---

## Wann verwenden?

Verwende diesen Skill, wenn:
- Eine Anwendung träge reagiert, hohe CPU-Auslastung zeigt oder Memory Leaks aufweist.
- Laufzeit-Komplexitäten von Algorithmen (z. B. $O(n^2)$ Schleifen) optimiert werden sollen.
- Frontend-Bundle-Größen reduziert oder Core Web Vitals (LCP, CLS, INP) verbessert werden müssen.
- Datenbank-Abfragen langsam sind (z. B. unindexierte Suchen, N+1 Query-Probleme).
- Caching-Strategien (Redis, HTTP Cache-Control, In-Memory Caching) implementiert werden sollen.

---

## Workflow

### 1. Engpass-Identifikation & Messung (Baseline)
* **Erstmessung / Benchmark:** Erfasse bestehende Kennzahlen vor Korrekturen (Ausführungszeit in ms, Speichermenge, Bundle-Größe in KB).
* **Code-Inspektion:** Identifiziere ineffiziente Datenstrukturen, verschachtelte Schleifen, synchrone I/O-Blockaden auf Haupt-Threads oder N+1 Datenbank-Abfragen.

### 2. Frontend- & Asset-Optimierung
* **Bundle-Analyse:** Identifiziere große Drittanbieter-Bibliotheken; wende Tree Shaking, Dynamic Imports (`import()`) und Code-Splitting an.
* **Rendering-Performance:** Vermeide unnötige Re-Render-Zyklen (z. B. durch Memoization, passende State-Strukturierung) und reflow-intensive DOM-Zugriffe.
* **Media & Caching:** Optimiere Bildformate (WebP/AVIF), nutze Browser-Caching und CDN-Header.

### 3. Backend- & Algorithmen-Optimierung
* **Komplexitäts-Reduktion:** Optimiere Algorithmen von $O(n^2)$ auf $O(n \log n)$ oder $O(1)$ durch geeignete Datenstrukturen (Hash Maps, Sets).
* **I/O & Datenbank:** Füge fehlende Datenbank-Indizes hinzu, ersetze N+1 Queries durch Joins oder Batching, nutze Asynchronität (`async/await`, Thread Pools) für blockierende I/O.
* **Caching Layer:** Führe In-Memory- (LRU-Cache) oder externe Cache-Schichten (Redis) für teure Berechnungen ein.

### 4. Nachmessung & Verifikation
* **Benchmarking:** Führe vergleichende Messungen durch (`console.time`, Benchmark-Skripte via `run_command`).
* **Verhaltensneutrale Prüfung:** Verifiziere über existierende Tests, dass die Logik unverändert korrekt funktioniert.

---

## Qualitätsregeln & Prinzipien

1. **Messen vor Optimieren:** Keine Vermutungen anstellen; Optimierungen müssen durch konkrete Messwerte begründet sein.
2. **Keine voreilige Komplexität:** Ersetze einfachen Code nicht durch unverständliche Micro-Optimierungen, wenn der Performance-Gewinn vernachlässigbar ist.
3. **KISS & DRY beibehalten:** Performance-Optimierungen dürfen die Code-Lesbarkeit und Wartbarkeit nicht nachhaltig zerstören.
4. **Verhaltensneutralität:** Performance-Fixes dürfen zu keinen funktionalen Regressionen führen.

---

## Empfohlene Tools

* **Filesystem & Search:** `view_file`, `grep_search` zum Aufspüren von $O(n^2)$ Schleifen und ineffizienten Importen.
* **Terminal:** `run_command` zur Ausführung von Profilern, Benchmark-Skripten oder Bundle-Analysatoren (`lighthouse`, `vite-bundle-visualizer`, `hyperfine`, etc.).

---

## Output-Format

Nach der Performance-Optimierung wird ein strukturierter Bericht bereitgestellt:

1. **Vorher/Nachher-Vergleich:**
   - **Metrik:** (z. B. Ausführungszeit / Speicherbedarf / Bundle-Größe)
   - **Vorher:** X ms / Y MB
   - **Nachher:** A ms / B MB (**Zuwachs: +Z%**)
2. **Geänderte Dateien:** Liste aller optimierten Module mit klickbaren Links (z. B. [data_processor.py](file:///path/to/data_processor.py#L88)).
3. **Erklärter Fix:** Beschreibung der angewendeten Technik (z. B. Hash-Map Lookup statt verschachtelter Schleife, Indexierung).
