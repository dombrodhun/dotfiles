---
name: copywriter
description: Formuliert prägnante UX-Microcopy (Error-Messages, Buttons, Tooltips), Landingpage-Headlines, Produkttexte und beachtet die gewünschte Brand-Voice. Aktivieren beim Verfassen von UI- und Marketingtexten.
---

# Copywriter (`/copywriter`)

Der `copywriter` Skill dient der Erstellung und Optimierung von benutzerzentrierten Texten (UX Writing & Microcopy) sowie ansprechenden Marketing- und Produkt-Texten. Er stellt sicher, dass Benutzerschnittstellen verständlich und motivierend kommunizieren und Marken-Botschaften klar und überzeugend vermittelt werden.

---

## Wann verwenden?

Verwende diesen Skill, wenn:
- UI-Microcopy verfasst oder optimiert werden soll (Button-Texte, Formular-Labels, Tooltips, Empty States).
- Hilfreiche und verständliche Fehlermeldungen (Error Messages) ohne Fachjargon geschrieben werden müssen.
- Landingpages, Hero-Sections, Headlines, Sublines und Call-to-Actions (CTAs) konzipiert werden.
- Produktbeschreibungen, Feature-Listen oder App-Store-Texte erstellt werden sollen.
- Die Tonalität (Tone of Voice) einer Marke in UI- oder Werbetexten durchgesetzt werden soll.

---

## Workflow

### 1. Kontext- & Tonalitätsanalyse (Tone of Voice)
* **Zielgruppe & Kontext:** Bestimme die Zielgruppe, das Kommunikationsziel und die Nutzungssituation (z. B. Stresssituation bei Fehlermeldung vs. Erkundung auf Landingpage).
* **Brand Voice festlegen:** Wähle die passende Tonalität (z. B. professionell & klar, sympathisch & nahbar, innovativ & prägnant).

### 2. UX Writing & Microcopy (Interface-Texte)
* **Handlungsorientierte CTAs:** Verwende aktive, nutzenorientierte Verben für Buttons (z. B. "Konto kostenlos erstellen" statt "Absenden").
* **Empathische Fehlermeldungen:** Erkläre bei Fehlern transparent: Was ist passiert? Warum? Und wie kann der Nutzer das Problem lösen?
* **Motivierende Empty States:** Biete auf leeren Seiten (z. B. leeres Postfach, keine Suchergebnisse) direkte Handlungsvorschläge und Hilfestellungen.
* **Formulartransparenz:** Gestalte Platzhalter, Helper-Texte und Validierungshinweise eindeutig.

### 3. Produkt- & Landingpage-Copywriting
* **Hero Section:** Formulierung prägnanter Headlines (Value Proposition) und unterstützender Sublines.
* **Feature & Benefit Copy:** Übersetzung technischer Eigenschafften in konkrete Anwendervorteile ("Features tell, benefits sell").
* **Scannbarkeit:** Nutzung von Stichpunkten, Fettgedrucktem und kurzen Absätzen für schnelle Lesbarkeit.

### 4. Review & Feinschliff
* **Barrierefreiheit (a11y):** Stelle sicher, dass Screenreader-Texte (`aria-label`, Alt-Texte) präzise und kontextgetreu sind.
* **Längen- & Layout-Check:** Prüfe, ob die Textlängen in die jeweiligen UI-Komponenten (Buttons, Modals, Cards) passen.

---

## Qualitätsregeln & Prinzipien

1. **Klarheit vor Kreativität:** Verwirre den Nutzer nicht durch unnötige Metaphern; der Nutzen muss sofort verständlich sein.
2. **Aktive Sprache:** Bevorzuge Aktivsätze gegenüber Passivkonstruktionen ("Wir haben Ihre Daten gespeichert" statt "Daten wurden gespeichert").
3. **Lösungsorientierte Fehler:** Keine Schuldzuweisungen an den Nutzer und kein technischer Fachjargon in UI-Meldungen.
4. **Konsistenz:** Gleiche Begriffe durchgängig für dieselbe Funktion verwenden (z. B. nicht zwischen "Suchen", "Finden" und "Filtern" ohne Unterschied wechseln).

---

## Empfohlene Tools

* **Filesystem:** `view_file`, `write_to_file`, `replace_file_content` zur direkten Anpassung von UI-Komponenten, Lokalisierungsdateien (`i18n`, `locales/de.json`) oder Markdown-Landingpages.

---

## Output-Format

Bei Ausführung von Copywriting-Aufgaben wird folgendes Format bereitgestellt:

1. **Textkonzept & Tonalität:** Kurze Definition des gewählten Sprachstils.
2. **Vorgeschlagene Textvarianten:** (z. B. 2–3 Alternativen für Headlines oder CTAs).
3. **UX-Microcopy Übersicht:**
   - **Komponente:** (z. B. Login Error Modal / Checkout Button)
   - **Bisheriger Text:** (falls vorhanden)
   - **Optimierter Text:** Neuer Wortlaut
   - **Rationale:** Warum dieser Text besser konvertiert/funktioniert.
4. **Geänderte Dateien:** Klickbare Dateilinks zu angepassten Komponenten oder Sprachdateien.
