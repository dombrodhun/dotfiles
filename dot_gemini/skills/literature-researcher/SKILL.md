---
name: literature-researcher
description: Erstellt Literatur-Synthesen, Taxonomien, Vergleichsmatrizen und saubere BibTeX-Referenzen für wissenschaftliche Arbeiten.
---

# Literature Researcher (`/literature-researcher`)

Verwende diesen Skill, wenn wissenschaftliche Literatur analysiert, strukturiert, in Vergleichsmatrizen zusammengefasst oder BibTeX-Referenzen aufbereitet werden sollen.

---

## Wann verwenden?
Verwende diesen Skill, wenn:
- Ein "Related Work"-Kapitel oder der "Stand der Technik" für eine wissenschaftliche Arbeit verfasst oder strukturiert werden soll.
- Wissenschaftliche Veröffentlichungen, Konferenzbeiträge oder Zeitschriftenartikel analysiert und verglichen werden sollen.
- Valide BibTeX-Einträge (`.bib`) generiert oder korrigiert werden müssen.
- Eine Gegenüberstellung von bestehenden Lösungsansätzen mit dem eigenen Forschungsbeitrag (Vergleichsmatrix) erstellt werden soll.

---

## Workflow für Literaturanalyse & BibTeX

1. **Suchstrategie & Keyword-Definition:**
   - Formulierung präziser englischer/deutscher Suchbegriffe für Datenbanken (IEEE Xplore, ACM Digital Library, SpringerLink, arXiv, Google Scholar).
   - Abgrenzung von Einschluss- und Ausschlusskriterien.

2. **Gegenüberstellung & Vergleichsmatrix (LaTeX-Tabelle):**
   - Extraktion relevanter Dimensionen (z. B. *Architekturansatz*, *Latenz*, *Skalierbarkeit*, *Sicherheit*, *Lizenz*).
   - Erstellung einer übersichtlichen LaTeX-Vergleichstabelle (`\begin{table}`).

3. **BibTeX-Generierung & Aufbereitung (`references.bib`):**
   - Erstellung syntaktisch einwandfreier BibTeX-Einträge mit eindeutigem Citation Key (`[NachnameJahrKeyword]`, z. B. `sommerville2020software`).
   - Pflichtfelder prüfen: `author`, `title`, `booktitle` / `journal`, `year`, `doi` / `url`.

4. **Synthese im Text (`\cite`):**
   - Formulierung vergleichender Absätze in LaTeX:
     "Während \cite{autorA2022} auf monolithische Architekturen setzt, schlagen \cite{autorB2023} einen event-driven Microservice-Ansatz vor..."

---

## Standard-BibTeX-Vorlagen

### Konferenzbeitrag (`@inproceedings`)
```bibtex
@inproceedings{smith2023microservices,
  author    = {Smith, John and Doe, Jane},
  title     = {Evaluating Latency in Event-Driven Microservices},
  booktitle = {Proceedings of the International Conference on Software Engineering (ICSE)},
  pages     = {102--115},
  year      = {2023},
  publisher = {IEEE},
  doi       = {10.1109/ICSE.2023.00015}
}
```

### Zeitschriftenartikel (`@article`)
```bibtex
@article{miller2024cloud,
  author  = {Miller, Alice and Johnson, Bob},
  title   = {Architectural Patterns for Cloud-Native Applications},
  journal = {ACM Transactions on Software Engineering and Methodology (TOSEM)},
  volume  = {33},
  number  = {2},
  pages   = {45:1--45:28},
  year    = {2024},
  doi     = {10.1145/3610000}
}
```

### Buch / Standardwerk (`@book`)
```bibtex
@book{sommerville2020software,
  author    = {Sommerville, Ian},
  title     = {Software Engineering},
  edition   = {10th},
  publisher = {Pearson},
  year      = {2020}
}
```

---

## Qualitätsregeln

- **Eindeutigkeit der Schlüssel:** Keine doppelten BibTeX-Keys innerhalb derselben `.bib`-Datei.
- **Konsistente Schreibweise:** Autorennamen stets im Format `Nachname, Vorname and Nachname2, Vorname2`.
- **Gegenüberstellung:** Ein gutes "Related Work"-Kapitel zählt Literatur nicht nur auf, sondern vergleicht, kategorisiert und stellt die eigene Forschung abgrenzend dar.
- **Valide Syntax:** Geschweifte Klammern `{}` korrekt schließen, Sonderzeichen (z. B. Umlaute `{\"a}`, `{\"o}`, `{\"u}`) LaTeX-konform maskieren.

---

## Output-Format

Kombination aus syntaktisch valider BibTeX-Datei und LaTeX-Vergleichsabschnitt:

```latex
\begin{table}[htbp]
    \centering
    \caption{Vergleich verwandter Arbeiten zur Systemarchitektur.}
    \label{tab:related_work_comparison}
    \begin{tabular}{|l|c|c|c|}
        \hline
        \textbf{Ansatz} & \textbf{Echtzeitfähigkeit} & \textbf{Skalierbarkeit} & \textbf{Open Source} \\ \hline
        Smith et al.~\cite{smith2023microservices} & Hoch & Mittel & Ja \\ \hline
        Miller et al.~\cite{miller2024cloud} & Mittel & Hoch & Nein \\ \hline
        \textbf{Unser Ansatz} & \textbf{Hoch} & \textbf{Hoch} & \textbf{Ja} \\ \hline
    \end{tabular}
\end{table}
```
