# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# shortcuts
alias v="nvim"
# If Arch, use pacman.
if uname -r| grep -iq "arch"; then
	alias i="sudo pacman -S"
else
	alias i="sudo apt-get install"
fi
# TODO: add a `cd` command to print contents of README.md file if it
# exists.
# TODO: add rule to constrain text of README.md to 80 lines by 80
# characters.
#
# Regarding notes.md project
alias journal="v $HOME/journal/journal.md" # TODO: Update to be a cli which creates forms for me to select from - some journal entries should be structured.
alias tasks="v $HOME/journal/tasks.md" #TODO: Similar to above. Have it accept cli tasks. Have it sync with tablet to use whatever's current image/drawing to be a task. Associate that drawing w/ that task.
alias motivation="v $home/journal/motivation.md"

alias growth="v $HOME/journal/growth.md" #TODO: create CLI which tracks main goals and aspirations. Look to the future for this.

# TODO(pablothedeveloper): source some script to use while in the
# directory?
#
alias no="cd $HOME/repos/sites/personal-site/ && cat mkdocs.yml && cd docs && ls"
alias noc="cd $HOME/repos/sites/personal-site/docs/coding && v changelog.md" #TODO: auto generate this and write it out at 6:30pm
alias nor="cd $HOME/repos/sites/personal-site/docs/writings && v reflections.md"

# regarding github projects
alias pnew="$HOME/repos/go/golang-project-starter/golang-project-starter --tmpls_path $HOME/repos/go/golang-project-starter/templates --absl_path $HOME/repos/go" #TODO figure out how to install this as a binary and set it up.

# adding configs
alias c='cd $HOME/.config'
alias cv='cd $HOME/.config/nvim'
alias cvt='cd $HOME/.config/nvim/templates && ls && v'
alias cvi='cd $HOME/.config/nvim && v init.lua'
alias cvp='cd $HOME/.config/nvim/lua/plugins && v markdown-editor.lua'
alias cvs='cd $HOME/.config/nvim/snippets && v markdown.snippets '
alias cs='cd $HOME/.config/sway && v config'
alias ci='cd $HOME/.config/i3blocks && v config'
alias cf='cd $HOME/.config/foot && v foot.ini'
alias ck='cd $HOME/.config/kanshi && v config'
alias cw='cd $HOME/.config/wofi && v config'
alias cb='cd $HOME && v .bashrc'
# Tune backlight
alias b="brightnessctl s"
alias b0="brightnessctl s 1%"
alias b1="brightnessctl s 10%"
alias b1.5="brightnessctl s 15%"
alias b2="brightnessctl s 20%"
alias b2.5="brightnessctl s 25%"
alias b3="brightnessctl s 30%"
alias b3.5="brightnessctl s 35%"
alias b4="brightnessctl s 40%"
alias b4.5="brightnessctl s 45%"
alias b5="brightnessctl s 50%"
alias b5.5="brightnessctl s 55%"
alias b6="brightnessctl s 60%"
alias b6.5="brightnessctl s 65%"
alias b7="brightnessctl s 70%"
alias b7.5="brightnessctl s 75%"
alias b8="brightnessctl s 80%"
alias b8.5="brightnessctl s 85%"
alias b9="brightnessctl s 90%"
alias b9.5="brightnessctl s 95%"
alias b10="brightnessctl s 100%"

# wifi
alias wl="nmcli device wifi list"
alias wc="nmcli device wifi connect"
alias ws="nmcli device status"
alias won="sudo nmcli radio wifi on"
alias woff="sudo nmcli radio wifi off"

# sourcing files
alias sb='source $HOME/.bashrc'

# exit
alias e='exit'

# standard stuff
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


# Change to dark mode
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

# print terminal message
echo "'tasks' - Tasks & Organization"
echo "'journal' - Internal Thinking."
echo "Helpful markdown templates: [h1][|datetime|date][spark|update]"

# enable history
# https://unix.stackexchange.com/questions/736371/how-do-i-get-terminal-to-print-command-history-with-timestamps-for-all-commands
export HISTTIMEFORMAT="%F %T "

# Allow 10k entries
HISTFILESIZE=10000
# attaches history from all shells
# https://superuser.com/questions/555310/bash-save-history-without-exit
export PROMPT_COMMAND="history -a;history -n;$PROMPT_COMMAND"

# Created by `pipx` on 2025-07-06 12:58:54
export PATH="$PATH:/home/dev/.local/bin"

# For snapdragon laptop (TODO: auto install
# from tar file - apt-get doesn't have v.0.10+
# which is needed for my plugins).
export PATH="$PATH:/opt/nvim-linux-arm64/bin"

