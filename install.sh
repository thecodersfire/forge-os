#!/usr/bin/env bash
set -euo pipefail
if [[ "${EUID}" -eq 0 ]]; then
  echo "Run this as your normal user; it will ask for sudo when needed." >&2
  exit 1
fi
if ! command -v apt-get >/dev/null || ! grep -qi ubuntu /etc/os-release; then
  echo "Ubuntu is required for this setup script." >&2
  exit 1
fi
sudo apt-get update
sudo apt-get install -y flatpak gnome-software gnome-software-plugin-flatpak dconf-cli git build-essential gdb python3 python3-venv

wallpaper_path="$(dirname "$0")/forge-os-wallpaper.svg"
if [[ -f "$wallpaper_path" ]]; then
  sudo install -m 0644 "$wallpaper_path" "/usr/share/backgrounds/forge-os-wallpaper.svg"
  gsettings set org.gnome.desktop.background picture-uri "file:///usr/share/backgrounds/forge-os-wallpaper.svg" || true
  gsettings set org.gnome.desktop.background picture-uri-dark "file:///usr/share/backgrounds/forge-os-wallpaper.svg" || true
fi

if ! flatpak remote-list --system | awk '{print $1}' | grep -qx flathub; then
  sudo flatpak remote-add --system --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fi
sudo flatpak install --system --noninteractive flathub com.vscodium.codium org.gnome.Builder org.mozilla.firefox com.opera.opera-gx
echo "Setup complete. Open Software to browse and update apps."
# Install this project's three purpose-specific local helper commands.
mkdir -p "$HOME/.local/bin"
install -m 0755 "$(dirname "$0")"/features/* "$HOME/.local/bin/"
echo 'Purpose-specific helper commands are installed in ~/.local/bin.'

# Install the three additional purpose-specific applications selected in apps.txt.
sudo flatpak install --system --noninteractive flathub org.wireshark.Wireshark org.kicad.KiCad cc.arduino.IDE2

# Ten additional purpose-specific applications
sudo flatpak install --system --noninteractive flathub org.thonny.Thonny org.godotengine.Godot org.openscad.OpenSCAD org.gnome.Boxes org.gnome.TextEditor org.gnome.Calculator org.gnome.Logs org.gnome.baobab com.github.tchx84.Flatseal org.gnome.Extensions
