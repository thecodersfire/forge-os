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
