# Built-in features for Forge-OS

Purpose: software development, with editors, Git, Python, and native build tools

1. **prepare a technical project** — run forge-os-workspace. It creates ~/Documents/forge-os-workspace/ with Design, Builds, Logs folders.
2. **plan a build or maintenance session** — run forge-os-plan to open a purpose-specific Markdown plan, saved under ~/Documents/forge-os-session-plans/.
3. **check technical change readiness** — run forge-os-check for an interactive checklist. Answers are not saved or transmitted.

These local tools create folders, open a local note, or display prompts. They do not install packages, change system settings, or send data.

Install them from this repository:

    mkdir -p "$HOME/.local/bin"
    install -m 0755 features/forge-os-workspace features/forge-os-plan features/forge-os-check "$HOME/.local/bin/"

## Preinstalled purpose software

The installer adds these three Flathub applications for software development, with editors, Git, Python, and native build tools:

1. **DB Browser for SQLite** — org.sqlitebrowser.sqlitebrowser
2. **Wireshark** — org.wireshark.Wireshark
3. **KeePassXC** — org.keepassxc.KeePassXC

They are installed from Flathub during setup. The repository contains application IDs and documentation, not third-party binaries; each publisher’s terms and licenses apply.

## Ten more purpose-specific preinstalled applications

The setup installs these ten Flathub apps selected for software development, with editors, Git, Python, and native build tools:

1. **Thonny** — write and debug Python code (org.thonny.Thonny)
2. **Godot Engine** — build and test 2D and 3D games (org.godotengine.Godot)
3. **OpenSCAD** — model parametric 3D parts in code (org.openscad.OpenSCAD)
4. **GNOME Boxes** — test workflows in virtual machines (org.gnome.Boxes)
5. **GNOME Text Editor** — edit plain-text notes and configuration files (org.gnome.TextEditor)
6. **GNOME Calculator** — perform scientific and financial calculations (org.gnome.Calculator)
7. **GNOME Logs** — inspect logs during troubleshooting (org.gnome.Logs)
8. **Disk Usage Analyzer** — find large files and manage storage (org.gnome.baobab)
9. **Flatseal** — review Flatpak app permissions (com.github.tchx84.Flatseal)
10. **GNOME Extensions** — manage GNOME desktop extensions (org.gnome.Extensions)

Flathub distributes the app packages. Check each publisher license and terms. This repository contains app IDs and documentation, not third-party binaries.

## Fifteen more purpose-specific preinstalled applications

These applications add tools suited to this setup focus. They are installed from Flathub by the setup scripts.

1. **DBeaver Community** (io.dbeaver.DBeaverCommunity) — browse, query, and manage SQL databases.
2. **Gitg** (org.gnome.gitg) — review Git history and branches graphically.
3. **Xournal++** (com.github.xournalpp.xournalpp) — annotate PDFs and take handwritten notes.
4. **JabRef** (org.jabref.jabref) — organize BibTeX references and research citations.
5. **Thunderbird** (org.mozilla.Thunderbird) — manage email and communication accounts.
6. **Evolution** (org.gnome.Evolution) — manage email, calendars, and contacts.
7. **QElectroTech** (org.qelectrotech.QElectroTech) — draw electrical schematics and wiring diagrams.
8. **LibreCAD** (org.librecad.librecad) — draft precise 2D technical drawings.
9. **GeoGebra Classic** (org.geogebra.GeoGebra) — explore geometry, algebra, graphing, and 3D math.
10. **Stellarium** (org.stellarium.Stellarium) — explore a planetarium sky for astronomy learning.
11. **Pixelorama** (com.orama_interactive.Pixelorama) — draw pixel-art sprites and frame-based animations.
12. **Synfig Studio** (org.synfig.SynfigStudio) — create vector-based 2D animations.
13. **GNOME Calendar** (org.gnome.Calendar) — schedule sessions, deadlines, and events.
14. **GNOME Papers** (org.gnome.Papers) — read project and reference PDFs.
15. **GNOME Clocks** (org.gnome.clocks) — time work sessions and events.

Emulator frontends do not include game ROMs or copyrighted game files; supply only files you are legally allowed to use.

## Fifteen further purpose-specific preinstalled applications

This second batch adds another set of apps selected for this setup’s purpose. They are installed from Flathub by the setup scripts.

1. **KDevelop** (org.kde.kdevelop) — edit, navigate, build, and debug software projects.
2. **Kate** (org.kde.kate) — edit configuration, code, notes, and structured project files.
3. **Meld** (org.gnome.meld) — compare and merge source files, folders, and Git changes.
4. **KDiff3** (org.kde.kdiff3) — compare and merge source files and directory trees.
5. **Konsole** (org.kde.konsole) — run shell commands and inspect development or system tasks.
6. **Dolphin** (org.kde.dolphin) — organize project assets and inspect folders.
7. **Ark** (org.kde.ark) — open and create common project archive files.
8. **Filelight** (org.kde.filelight) — find large folders and reclaim disk space.
9. **Warehouse** (io.github.flattool.Warehouse) — review installed Flatpaks, manage versions, and clean app data.
10. **KCalc** (org.kde.kcalc) — run scientific and unit calculations for coursework or technical work.
11. **Okular** (org.kde.okular) — read, bookmark, and annotate technical drawings, reading lists, and reference PDFs.
12. **KGeography** (org.kde.kgeography) — practice country, capital, and map recognition.
13. **Marble** (org.kde.marble) — explore maps and a virtual globe for geographic context.
14. **KStars** (org.kde.kstars) — plan sky observations and explore astronomy simulations.
15. **Clock** (org.kde.kclock) — set study, work, and routine timers with alarms and a stopwatch.

Game frontends do not include proprietary game data; add only games or files you are allowed to use.

## Blender included in every setup

Blender (org.blender.Blender) is included in every setup for 3D modeling, animation, rendering, and video editing. Installers fetch it from Flathub; Blender’s own license and terms apply.
