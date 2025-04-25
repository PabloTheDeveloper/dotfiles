# Purpose
Hi there!
This repo's purpose is to contain guides that
are somewhat current to workflows I do
somewhat often.

This is intended to save me time as I will be
needing access to these command next time I
do some development work.

# Workflows
There are three main projects to be used often.
They are notes.md, readme.md, and my personal site.

Readme.md has projects I've configured and general todos for life.
It is more my organizational part of my life.
It contains my projects

Notes has my journals, and other private thoughts.

I also have a personal site to which I can upload public writings and other works.

For now notes can be a separate thing. It really is meant to highly
private and personal.

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

TODOs:

- [ ] Work w/ Starbucks Login (browser
      opening)

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
