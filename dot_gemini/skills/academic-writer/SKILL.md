---
name: academic-writer
description: Erstellt, gliedert und formuliert wissenschaftliche Abschnitte und Kapitel für Abschlussarbeiten und Hausarbeiten in LaTeX (Informatik/Software Engineering).
---

# Academic Writer (`/academic-writer`)

Verwende diesen Skill, wenn wissenschaftliche Texte, Kapitelstrukturen, Absätze oder LaTeX-Umgebungen für Bachelorarbeiten, Masterarbeiten, Projektarbeiten oder Hausarbeiten verfasst oder überarbeitet werden sollen.

---

## Wann verwenden?
Verwende diesen Skill, wenn:
- Kapitel oder Abschnitte einer wissenschaftlichen Arbeit (z. B. Einleitung, Stand der Technik, Systementwurf, Implementierung, Evaluation, Fazit) verfasst oder strukturiert werden sollen.
- Formulierungen in wissenschaftlichem, objektivem Deutsch oder Englisch überarbeitet werden müssen.
- LaTeX-Formatierungen für Abbildungen, Tabellen, Algorithmen oder Code-Listings generiert werden sollen.
- Eine logische Argumentationskette zwischen Problemstellung, Forschungsfrage und Lösung gebildet wird.

---

## Workflow für wissenschaftliche Kapitel (Informatik / SE)

1. **Kontext- & Zielanalyse:**
   - Erfasse das Thema, die zentrale Forschungsfrage und das Ziel des spezifischen Kapitels.
   - Kläre die gewünschte Sprache (Deutsch oder Englisch).
   - Prüfe vorhandene Diagramme, Prototypen-Code oder Messdaten, die eingebunden werden sollen.

2. **Gliederung & Strukturierung (LaTeX):**
   - Unterteile das Kapitel in eine klare mathematisch-logische Hierarchie (`\section`, `\subsection`, `\subsubsection`).
   - Stelle sicher, dass jeder Abschnitt mit einem einleitenden Überblick beginnt ("Roter Faden").

3. **Inhaltliche Ausformulierung:**
   - **Sprachstil:** Objektiv, präzise, sachlich. Vermeide Umgangssprache, emotionale Wertungen und Füllwörter.
   - **Begrifflichkeiten:** Einheitliche Verwendung von Fachtermini (z. B. *Microservices*, *Container-Orchestrierung*, *Latenzzeit*).
   - **Referenzierung:** Nutze Platzhalter oder explizite Schlüssel für Zitationen (`\cite{author2024}`) und Querverweise (`\ref{fig:architektur}`, `\ref{sec:evaluation}`).

4. **LaTeX-Umgebungen erstellen:**
   - Erzeuge sauberen, kompilierbaren LaTeX-Code.
   - **Abbildungen:** `\begin{figure}[htbp] ... \caption{...} \label{fig:...} \end{figure}`
   - **Tabellen:** `\begin{table}[htbp] ... \caption{...} \label{tab:...} \end{table}`
   - **Code-Listings:** Nutze `\begin{lstlisting}[language=Java, caption=..., label=lst:...]` oder `minted`.

---

## Standard-Kapitelstrukturen in Informatik-Arbeiten

### A. Einleitung (`introduction.tex`)
- Motivation & Problemstellung
- Zielsetzung & Forschungsfragen
- Aufbau der Arbeit

### B. Grundlagen & Stand der Technik (`related_work.tex`)
- Theoretische Konzepte & Technologien
- Systematische Gegenüberstellung verwandter Arbeiten (`\cite{...}`)

### C. Konzeption & Systemarchitektur (`architecture.tex`)
- Anforderungen (funktional / nicht-funktional)
- Systemarchitektur & Modulgrenzen
- Entwurfsentscheidungen (ADRs) & Diagramme

### D. Implementierung (`implementation.tex`)
- Technische Details des Prototyps
- Kernelemente & verwendete Bibliotheken
- Code-Listings wesentlicher Algorithmen

### E. Evaluation & Benchmarking (`evaluation.tex`)
- Versuchsausfbau & Testumgebung
- Empirische Ergebnisse (Laufzeiten, Durchsatz, Testabdeckung)
- Kritische Diskussion der Ergebnisse

### F. Fazit & Ausblick (`conclusion.tex`)
- Zusammenfassung der Ergebnisse bezüglich der Forschungsfrage
- Einschränkungen (Limitations)
- Zukünftige Arbeiten (Future Work)

---

## Qualitätsregeln

- **Präzision vor Länge:** Keine unnötigen Blähwörter ("es lässt sich sagen, dass..."). Direkte, klare Sätze.
- **Syntaktische Validität:** Jeder generierte LaTeX-Code muss syntaktisch korrekt geschlossen sein.
- **Roter Faden:** Jeder Absatz muss einen klar definierten Kerngedanken haben und logisch zum nächsten überleiten.
- **Keine unbelegten Behauptungen:** Aussagen über Performance, Sicherheit oder Trends müssen entweder durch Zitate (`\cite`) oder eigene Evaluationsergebnisse belegt sein.

---

## Output-Format

Wissenschaftlicher LaTeX-Code bereit zur Integration in `.tex`-Dateien:

```latex
\section{Systemarchitektur und Entwurf}
\label{sec:systemarchitektur}

In diesem Abschnitt wird die Gesamtarchitektur des entwickelten Prototyps vorgestellt...

\begin{figure}[htbp]
    \centering
    \includegraphics[width=0.8\textwidth]{figures/architecture.png}
    \caption{Übersicht der Komponentenarchitektur des Prototyps.}
    \label{fig:komponentenarchitektur}
\end{figure}

Wie in Abbildung~\ref{fig:komponentenarchitektur} dargestellt, gliedert sich das System in drei Kernmodule...
```
