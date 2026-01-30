
#update
sudo dnf5 up -y --refresh --allowerasing

sudo dnf5 copr enable elxreno/preload -y
sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h\n" | sudo tee -a /etc/yum.repos.d/vscodium.repo

#Install Different apps:
sudo dnf5 install --allowerasing -y  nvim preload vlc megasync lingot playerctl brightnessctl vscodium mpv dolphin-megasync libheif-freeworld lingot kclock kdenlive

sudo systemctl enable preload.service
sudo systemctl start preload.service

exit
