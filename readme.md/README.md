# Purpose

This repo's purpose is to contain guides that
are somewhat current to workflows I do
somewhat often.

# Playbooks

Generally, check the .bashrc file or .zshrc
file for what I've aliased there.

## Wifi

To connect to a network:

```
wc
```

To list networks:

```
wl
```

To show device status:

```
wd
```

## Sound

Install pipewire and related tools as pulseaudio is rather old.

```
sudo -S pipewire
```

```
sudo -S pipewire-pulse
```

```
sudo -S pavucontrol
```

Use `pavucontrol` to update sound settings.

The default desktop app, which will appear in `wofi`
launcher is called "Volume Control"
I also needed to
install:
```
sudo -S
sof-firmware
```

# Rarely Used

## Setup Kanshi

1. run:
   `swaymsg -t get_outputs`

2. Add right label to `.config/kanshi/config`

3. Following the guide from arch linux (after
   creation on kanshi file):
   `systemctl --user enable kanshi.service`

4. enable the sway session:
   `systemctl --user start sway-session.target`

## Installing App Images

Run:
`chmod +x apps/<enter app>`
