---
name: frontend-design
description: Entwirft und setzt moderne, visuell herausragende UI/UX-Komponenten und responsive Web-Layouts um (CSS, Design-Tokens, Dark Mode, Micro-Animations). Aktivieren beim Bauen von Web-Apps, UI-Komponenten oder Style-Systemen.
---

# Frontend Design (`/frontend-design`)

Der `frontend-design` Skill dient der Konzeption und Umsetzung visueller, moderner und benutzerfreundlicher Web-Interfaces. Er stellt sicher, dass Webanwendungen nicht wie einfache Prototypen wirken, sondern durch durchdachte Design-Systeme, harmonische Farbwelten, moderne Typografie, geschmeidige Mikro-Animationen und Barrierefreiheit (Accessibility) überzeugen.

---

## Wann verwenden?

Verwende diesen Skill, wenn:
- Neue Webanwendungen, Dashboard-Interfaces oder Landingpages gestaltet werden.
- UI-Komponenten (Buttons, Modals, Navigationsleisten, Cards) entwickelt oder überarbeitet werden.
- Ein durchgängiges Design-System (CSS-Variablen, Themes, Dark Mode) aufgebaut werden soll.
- Layouts für verschiedene Bildschirmgrößen (Responsive Design: Mobile, Tablet, Desktop) optimiert werden müssen.
- Visuelle Mikro-Interaktionen, CSS-Transitions oder Lade-Animationen integriert werden sollen.

---

## Workflow

### 1. Design-System & Token-Basis aufbauen
* **Farbpalette & Modus:** Definiere harmonische Farbwerte (bevorzugt in HSL/RGB CSS-Variablen) für Primary, Secondary, Background, Surface, Text und Statusfarben. Unterstütze standardmäßig Light- und Dark-Themes.
* **Typografie:** Verwende moderne Schriftarten (z. B. Inter, Roboto, Outfit via Google Fonts) statt Browser-Standards. Definiere typografische Skalen (`--font-size-sm`, `--font-size-lg`, etc.).
* **Spatio- & Elevational Tokens:** Festlegen von einheitlichen Spacings (Margins/Paddings), Abrundungen (`border-radius`) und Schattierungen (`box-shadow` / Glassmorphism-Effekte).

### 2. Komponenten & semantisches Layout erstellen
* **Semantisches HTML:** Nutzen von HTML5-Elementen (`<header>`, `<nav>`, `<main>`, `<article>`, `<aside>`, `<footer>`).
* **Responsive Layouts:** Einsatz von CSS Flexbox und CSS Grid für flexible, medienunabhängige Raster ohne starre Pixelwerte.
* **Komponenten-Struktur:** Trennung in wiederverwendbare Komponenten mit sauberen Klassenbezeichnungen (z. B. nach BEM oder Scoped CSS).

### 3. Visueller Feinschliff & Interaktivität
* **State-Handling:** Gestalte explizite Stile für Hover, Focus, Active, Disabled und Loading-Zustände.
* **Mikro-Animationen:** Sanfte Übergänge (`transition: all 0.2s ease-in-out`) für Interaktionen und UI-Zustandswechsel.
* **Barrierefreiheit (a11y):** Prüfe Kontraste, sichtbare Focus-Ringe für Tastatur-Navigation und verwende korrekte ARIA-Attribute (`aria-expanded`, `aria-label`, etc.).

### 4. Beseitigung von Platzhaltern
* **Echte Assets:** Nutze bei Bedarf das Tool `generate_image` zur Generierung realistischer UI-Demonstrationsgrafiken oder Icons, statt leere Platzhalterkästen zu verwenden.

### 5. Vorschau & Verifikation
* **Dev-Server & Kontrolle:** Starte den Entwicklungs-Server (`npm run dev` / Vite / Next.js) über `run_command` und verifiziere das responsive Aussehen.

---

## Qualitätsregeln & Ästhetik-Standards

1. **Rich Aesthetics & WOW-Effekt:** Vermeide Standard-Farben (reines Rot/Blau/Grün) und ungestylte Browser-Elemente. Setze auf edle Farbverläufe, abgestimmte Akzente und moderne Typografie.
2. **Responsive First:** Interfaces müssen auf Smartphones, Tablets und Widescreen-Monitoren tadellos skalieren.
3. **Keine Platzhalter:** Verwende echte Beispielinhalte oder generierte Grafiken.
4. **Clean CSS:** Bevorzuge strukturiertes Vanilla-CSS mit CSS-Variablen. Nutze Frameworks wie TailwindCSS nur auf expliziten Wunsch des Nutzers.

---

## Empfohlene Tools

* **Filesystem:** `write_to_file`, `replace_file_content`, `view_file` zur Erstellung von CSS- und HTML/JSX-Dateien.
* **Image Generation:** `generate_image` zur Erstellung von Demo-Bildern und Icons.
* **Terminal:** `run_command` zum Starten und Prüfen von Dev-Servern.

---

## Output-Format

Nach Erstellung oder Überarbeitung von UI-Komponenten wird eine strukturierte Übersicht ausgegeben:

1. **Design-Konzept & Tokens:** Zusammenfassung von Farbpalette, Schriften und Komponenten-Struktur.
2. **Erstellte / Modifizierte Dateien:** Übersicht aller Layout-, CSS- und Komponenten-Dateien mit klickbaren Dateilinks (z. B. [index.css](file:///path/to/src/index.css)).
3. **Verifikationsnachweis:** Status des Dev-Servers oder Vorschau-Hinweise für den Nutzer.
