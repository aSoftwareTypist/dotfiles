#Speed up DNF:
echo 'fastestmirror=1' | sudo tee -a /etc/dnf/dnf.conf
echo 'max_parallel_downloads=10' | sudo tee -a /etc/dnf/dnf.conf

#Enable RPM Fusion :
sudo dnf5 -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#sudo dnf  config-manager --enable fedora-cisco-openh264

sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install -y    com.belmoussaoui.Authenticator         com.sindresorhus.Caprine     com.stremio.Stremio     org.gnome.gitlab.dqpb.GMetronome        org.telegram.desktop      io.freetubeapp.FreeTube     com.brave.Browser       org.onlyoffice.desktopeditors       org.gnome.Lollypop        com.getpostman.Postman      org.gnome.gitlab.dqpb.GMetronome        org.mozilla.Thunderbird   org.qbittorrent.qBittorrent     com.viber.Viber

flatpak update -y

sudo dnf rm -y akregator kmail neochat kaddressbook kontact kpat kmouth kmahjongg kmines elisa-player dragon libreoffice-core

exit
