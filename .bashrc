# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# shortcuts
alias v="nvim"
alias i="sudo pacman -S"
# TODO: add a `cd` command to print contents of README.md file if it
# exists.
# TODO: add rule to constrain text of README.md to 80 lines by 80
# characters.
#
# regarding readme.md project
alias r="cd $HOME/readme.md && v"
alias rr="cd $HOME/readme.md && v README.md"
alias rt="cd $HOME/readme.md && v todos.md"
alias rh="cd $HOME/readme.md && v history.md"

# Regarding notes.md project
alias n="cd $HOME/notes.md && v README.md"
alias ni="cd $HOME/notes.md && v journal.md"
alias nt="cd $HOME/notes.md && v tasks.md"
alias nm="cd $HOME/notes.md && v motivation.md"
alias na="cd $HOME/notes.md && v accountability.md"
# TODO(pablothedeveloper): source some script to use while in the
# directory?
alias no="cd $HOME/projects/personal-site/ && cat mkdocs.yml && cd docs && ls"
alias noc="cd $HOME/projects/personal-site/docs/coding && v changelog.md"
alias nor="cd $HOME/projects/personal-site/docs/writings && v reflections.md"

# regarding github projects
alias pnew="$HOME/projects/go/golang-project-starter/golang-project-starter --tmpls_path $HOME/projects/go/golang-project-starter/templates --absl_path $HOME/projects/go"
alias p="cd $HOME/projects/ && ls"
alias flappybird="cd $HOME/projects/flappybird && v"
alias init-me="cd $HOME/projects/init-me && v"
alias pscript="cd $HOME/projects/scripts && v"
alias ivep="cd $HOME/projects/ivep&& v"
# adding configs
alias c='cd $HOME/.config && v'
alias cv='cd $HOME/.config/nvim && v'
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
alias cy='cd $HOME/notes.md/media/videos && echo "create a directory for a new video series or add a directory for a video and script for a series"'
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

# sourcing files
alias sb='source $HOME/.bashrc'

# exit
alias e='exit'

# standard stuff
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# standard directories


# Change to dark mode
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

# print terminal message
echo "'nt' - Tasks & Organization"
echo "'ni' - Internal Thinking."
echo "'no' - External Thoughts."
echo "'noc, nor' - To certain projects."
echo "use h1[|datetime|date][spark|update]"
echo "'nm' - Motivational Thinking."
echo "'na' - Accountability Mirror."
echo "'ivep' - Involuntary / Voluntary Exit Plan."

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
