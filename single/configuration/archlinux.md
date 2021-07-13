# arch-chroot /mnt

## 必备
networkmanager dosfstools ntfs-3g git wget curl zsh bbswitch bash-completion

sudo

pacman -S dialog wpa_supplicant netctl wireless_tools wpa_actiond

pacman -S dosfstools grub efibootmgr os-prober

intel-ucode

xorg-server xorg-server-common xorg-xrandr

qt kf5 kf5-aids plasma sddm kde-system kde-utilities kde-graphics kdeconnect packagekit-qt5 
sudo systemctl enable sddm.service 
sudo systemctl enable NetworkManager.service //MMMMMMMMMM

xf86-input-libinput

alsa-utils pulseaudio pulseaudio-alsa pavucontrol

base-devel libx11 libxext

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay:
optimus-manager optimus-manager-qt
systemctl enable optimus-manager.service

------------------------
## 配置
nvidia nvidia-utils libva-vdpau-driver libva-utils libva-intel-driver

ttf-joypixels wqy-microhei
(<string>文泉驿等宽微米黑</string>)

p7zip unrar tar unzip unarchiver tftp-hpa neovim xclip meld tmux weechat neofetch termite flameshot mpv smplayer gstreamer gst-libav gst-plugins-good

brave-bin chromium-vaapi chromium-widevine firefox-beta-bin

vivaldi vivaldi-ffmpeg-codecs

yay:
nerd-fonts-meslo nerd-fonts-fira-code ttf-sarasa-gothic ttf-twcns-fonts

(<string>MesloLGMDZ Nerd Font Mono</string>)

(<string>FiraCode Nerd Font Mono</string>)

(<string>等距更纱黑体 SC</string>)

---

## 工具

vivaldi-widevine autojump chromium-widevine

visual-studio-code-bin

appimagelauncher(appimagelauncher用来启动appimage程序,比如picgo,启动后可直接menu中找到)

fcitx-im fcitx-rime kcm-fcitx fcitx-table-extra

```
sudo echo -e "export GTK_IM_MODULE=fcitx\nexport QT_IM_MODULE=fcitx\nexport XMODIFIERS=@im=fcitx\nexport LANG=en_US.UTF-8\nexport LANGUAGE=en_US:en_GB:en\nexport LC_CTYPE=en_US.UTF-8">>~/.xprofile
```

---

openwrt
```
perl-xml-parser bin86 asciidoc b43-fwcutter cdrtools mercurial fastjar intltool sharutils time xmlto qemu upx dtc lib32-glibc msmtp uglify-js libantlr3c gperf swig rsync
```

美化

kvantum-qt5 materia-kde kvantum-theme-materia papirus-icon-theme
