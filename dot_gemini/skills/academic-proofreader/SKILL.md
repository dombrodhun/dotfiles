---
name: academic-proofreader
description: Führt Lektorat, Formalia-Checks, Querverweis-Prüfungen und Sprachkorrekturen für LaTeX-Dokumente wissenschaftlicher Arbeiten durch.
---

# Academic Proofreader (`/academic-proofreader`)

Verwende diesen Skill, wenn LaTeX-Dokumente wissenschaftlicher Arbeiten Korrektur gelesen, auf formale Fehler überprüft oder sprachlich verfeinert werden sollen.

---

## Wann verwenden?
Verwende diesen Skill, wenn:
- Ein Entwurf eines Kapitels vor der Abgabe Korrektur gelesen werden soll (Lektorat).
- Querverweise (`\ref`), Zitate (`\cite`), Abbildungs- und Tabellenbeschriftungen (`\caption`, `\label`) geprüft werden sollen.
- Häufige LaTeX-Syntaxfehler (unmaskierte Sonderzeichen wie `%`, `_`, `&`, fehlende Klammern) aufgespürt werden müssen.
- Der rote Faden, die sprachliche Konsistenz und die Einhaltung akademischer Formalia überprüft werden sollen.

---

## Prüf- und Korrektur-Workflow

1. **Formalia & LaTeX-Syntax-Prüfung:**
   - **Label & Ref:** Passt jedes `\ref{label}` zu einem existierenden `\label{label}`? Entsprechen die Präfixe den Konventionen (`fig:`, `tab:`, `sec:`, `lst:`, `eq:`)?
   - **Tilde für geschützte Leerzeichen:** Ist bei Verweisen vor Zahlen eine Tilde gesetzt? (z. B. `Abbildung~\ref{fig:arch}`, `Kapitel~\ref{sec:intro}`, `\cite{smith2023}`).
   - **Maskierung:** Sind Prozentzeichen (`\%`), Unterstriche (`\_`) und Et-Zeichen (`\&`) im Fließtext korrekt maskiert?

2. **Wissenschaftliches Sprach-Lektorat:**
   - **Stil & Tonfall:** Passiv/Aktiv-Balance prüfen. Vermeidung von Ich-Form ("Ich habe entwickelt..." -> "Im Rahmen dieser Arbeit wurde entwickelt...").
   - **Vermeidung von Umgangssprache:** Ersetze vage Ausdrücke (z. B. "sehr schnell" -> "mit einer durchschnittlichen Latenz von unter 12 ms").
   - **Präzision & Grammatik:** Prüfung auf Zeichensetzung, Kommasetzung bei Nebensätzen und korrekte Fachbegriffe.

3. **Inhaltliche & Logische Konsistenz:**
   - **Begriffs-Konsistenz:** Wird ein Begriff durchgängig einheitlich verwendet? (z. B. nicht abwechselnd *Frontend*, *Benutzeroberfläche* und *Client-Layer* für dieselbe Komponente).
   - **Abkürzungsverzeichnis:** Werden Abkürzungen bei der ersten Verwendung eingeführt? (z. B. `API (Application Programming Interface)`).

4. **Mathematische Notationen & Einheiten:**
   - Einheiten im Mathe-Modus ordnungsgemäß formatieren (z. B. `\SI{100}{\ms}` oder `$100\,\text{ms}$` statt `$100ms$`).

---

## Typische LaTeX-Fehlermuster & Korrekturen

| Fehlerhafter LaTeX-Code | Korrigierter LaTeX-Code | Grund der Korrektur |
| :--- | :--- | :--- |
| `Abbildung \ref{fig:demo}` | `Abbildung~\ref{fig:demo}` | Geschütztes Leerzeichen verhindert Zeilenumbruch vor Nummer |
| `Das System läuft mit 99.9% Uptime.` | `Das System läuft mit 99,9\,\% Uptime.` | Prozentzeichen maskiert, deutsches Komma & kleiner Abstand |
| `Ich habe den Algorithmus getestet.` | `Der Algorithmus wurde empirisch evaluiert.` | Akademischer Passivstil ohne Ich-Form |
| `In Tabelle \ref{tab:results} sieht man...` | `Wie in Tabelle~\ref{tab:results} dargestellt, ...` | Wissenschaftlicher Einleitungssatz |

---

## Qualitätsregeln

- **Keine Inhaltsverfälschung:** Beim Lektorat wird die Kernaussage des Autors exakt beibehalten.
- **Konstruktive Kritik:** Ergänze Verbesserungsvorschläge mit einer kurzen Begründung.
- **Diff-Format:** Gib Korrekturen übersichtlich als Vergleich (Vorher -> Nachher) oder als direkt einsatzbereiten LaTeX-Code aus.

---

## Output-Format

Analysebericht und korrigierter LaTeX-Block:

```markdown
### Gefundene Anmerkungen:
1. **Querverweis:** Zeile 14: Geschütztes Leerzeichen vor `\ref{fig:architektur}` hinzugefügt.
2. **Stil:** Zeile 22: Umgangssprachliches "ziemlich gut" durch "signifikant höher" ersetzt.

### Korrigierter LaTeX-Code:
```latex
Wie in Abbildung~\ref{fig:architektur} dargestellt, erzielte die optimierte Pipeline eine signifikant höhere Durchsatzrate...
```
