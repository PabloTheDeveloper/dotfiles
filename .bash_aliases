###########################################################
# Environment Variables
###########################################################
export CONFIG="/home/dev/.config"
export NVIM="$CONFIG/nvim"
export SWAY="$CONFIG/sway"
export FISH="$CONFIG/FISH"
export GOPATH="$HOME/go"
export BA="$HOME/.bash_aliases"
export GI="$HOME/.gitignore"
export PATH="$HOME/go/bin:$PATH"
###########################################################
# Commands
###########################################################
# Misc
alias e='exit'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias v="nvim"
alias lynx="lynx -vikeys" # in vi mode.
alias bat="batcat"
alias godoc="godoc -http :8080"
alias s='source $HOME/.bash_aliases && source $HOME/.generated_repo_aliases && source $CONFIG/fish/config.fish'
# Git
alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gre='git restore'
alias grm='git rm'
alias gpull='git pull'
# Wifi
alias wifi-off="nmcli radio wifi off"
alias wifi-on="nmcli radio wifi on"
alias wifi-list="nmcli device wifi list"
alias wifi-connect="nmcli device wifi connect"
alias wifi-status="nmcli device status"
# Project Starter
alias project-starter="$HOME/repos/go/golang-project-starter/golang-project-starter --tmpls_path $HOME/repos/go/golang-project-starter/templates --absl_path $HOME/repos/go"
alias github-sync="cd $HOME/repos/go/go-github-sync && go run . && cd $HOME && v -O $HOME/CHANGELOG.md +Outline +OutlineFocusCode +\"tabnew\" +\"e $HOME/PROJECTS.md\" +Outline +OutlineFocusOutline"
###########################################################
# Folder Locations
###########################################################
alias downloads="cd $DOWNLOADS"
alias documents="cd $DOCUMENTS"
alias videos="cd $VIDEOS"
alias music="cd $MUSIC"
alias pictures="cd $PICTURES"
###########################################################
# File Locations
###########################################################
alias ba="v $HOME/.bash_aliases"
alias gi="v $HOME/.gitignore"
alias changelog="v -O $HOME/CHANGELOG.md +Outline +OutlineFocusOutline"
alias journal="v -O $HOME/journal/journal.md +Outline +OutlineFocusOutline"
# Config
alias cs='cd $SWAY && v .'
alias cv='cd $NVIM'
alias cvs='cd $NVIM/snippets && v .'
alias cvi='cd $NVIM && v init.lua'
alias cvp='cd $NVIM/lua/plugins && v .'
alias ck='cd $CONFIG/kanshi && v config'
alias cf='cd $FISH && v config.fish'
# Personal Site
alias site="cd $HOME/repos/sites/personal-site/ && cat mkdocs.yml && cd docs && ls"
alias reflections="cd $HOME/repos/sites/personal-site/docs/writings && v reflections.md"
