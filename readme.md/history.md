sudo pacman -S brightnessctl
495 sudo pacman -S tlp
496 systemctl enable tlp.service
497 systemctl start tlp.service
498 systemctl mask systemd-rfkill.service
499 systemctl mask systemd-rfkill.service
500 systemctl mask systemd-rfkill.socket

cpupower-gui
