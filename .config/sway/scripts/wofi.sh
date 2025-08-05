#! /usr/bin/sh

#Guide: Start launcher
# explains how to setup the cache:
# https://www.reddit.com/r/swaywm/comments/rzqty5/wofi_filter_desktop_entries/#:~:text=I%20was%20wondering%20the%20same,a%20folder%20of%20your%20choosing.&text=I%20have%20noticed%20that%20it,deleting%20or%20moving%20these%20files.

# needs to be run: "ln -s /usr/share/mime $HOME/.config/wofi/share"

#XDG_DATA_DIRS="$HOME/.config/wofi/share"
#XDG_DATA_HOME="/dev/null"
#XDG_CACHE_HOME="/dev/null"

/usr/bin/wofi --show drun --color $HOME/.config/wofi/colors --cache $HOME/.config/wofi/wofi-drun-cache

