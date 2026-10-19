#!/usr/bin/env bash
# Run inside Cubic's chroot terminal while building the ISO.
set -euo pipefail
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y --no-install-recommends flatpak gnome-software gnome-software-plugin-flatpak dconf-cli git build-essential gdb python3 python3-venv

os_release_file=/etc/os-release
if [[ -L /etc/os-release && -f /usr/lib/os-release ]]; then
  os_release_file=/usr/lib/os-release
fi
sed -i 's/^NAME=.*/NAME="Forge OS"/; s/^PRETTY_NAME=.*/PRETTY_NAME="Forge OS 26.04 LTS"/' "$os_release_file"

if [[ ! -f /usr/share/backgrounds/forge-os-wallpaper.svg ]]; then
  echo "Copy forge-os-wallpaper.svg to /usr/share/backgrounds/ in Cubic before running this script." >&2
  exit 1
fi
install -d -m 0755 /etc/dconf/db/local.d
if [[ ! -f /etc/dconf/profile/user ]]; then
  install -d -m 0755 /etc/dconf/profile
  cat > /etc/dconf/profile/user <<'EOF_PROFILE'
user-db:user
system-db:local
EOF_PROFILE
fi
cat > /etc/dconf/db/local.d/00-custom-distro <<'EOF_DCONF'
[org/gnome/desktop/background]
picture-uri='file:///usr/share/backgrounds/forge-os-wallpaper.svg'
picture-uri-dark='file:///usr/share/backgrounds/forge-os-wallpaper.svg'
EOF_DCONF
dconf update

flatpak remote-add --system --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --system --noninteractive flathub \
  com.vscodium.codium \
  org.gnome.Builder \
  org.mozilla.firefox \
  com.opera.opera-gx
apt-get clean
rm -rf /var/lib/apt/lists/*
# Additional purpose-specific applications installed into the customized image.
flatpak install --system --noninteractive flathub org.sqlitebrowser.sqlitebrowser org.wireshark.Wireshark org.keepassxc.KeePassXC

# Ten additional purpose-specific applications
flatpak install --system --noninteractive flathub org.thonny.Thonny org.godotengine.Godot org.openscad.OpenSCAD org.gnome.Boxes org.gnome.TextEditor org.gnome.Calculator org.gnome.Logs org.gnome.baobab com.github.tchx84.Flatseal org.gnome.Extensions

# Fifteen additional purpose-specific applications
flatpak install --system --noninteractive flathub io.dbeaver.DBeaverCommunity org.gnome.gitg com.github.xournalpp.xournalpp org.jabref.jabref org.mozilla.Thunderbird org.gnome.Evolution org.qelectrotech.QElectroTech org.librecad.librecad org.geogebra.GeoGebra org.stellarium.Stellarium com.orama_interactive.Pixelorama org.synfig.SynfigStudio org.gnome.Calendar org.gnome.Papers org.gnome.clocks
