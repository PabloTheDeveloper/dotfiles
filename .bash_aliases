###########################################################
# Environment Variables
########################################################### export SCRIPTS="$HOME/scripts" export CONFIG="$HOME/.config"
export LOCAL="$HOME/.local"
export SHARE="$LOCAL/share"
export NVIM="$CONFIG/nvim"
export SWAY="$CONFIG/sway"
export FISH="$CONFIG/fish"
export KITTY="$CONFIG/kitty"
export GOPATH="$HOME/go"
export BA="$HOME/.bash_aliases"
export GI="$HOME/.gitignore"
export PATH="$HOME/go/bin:$PATH"
export JOURNAL="$HOME/journal/journal.md"
export TASKS="$HOME/journal/tasks.md"
###########################################################
# Commands
###########################################################
# Misc
# TODO(pablothedeveloper): Make functions.
alias i="sh $SCRIPTS/i"
alias e='exit'
#alias exit="echo \"Don't use this!\""
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias v="nvim"
alias lynx="lynx -vikeys" # in vi mode.
alias l='eza --header --long --no-permissions --no-user --binary --time "modified" --time-style "+%m/%d|%H:%M%p" --git --tree --level 2 --group-directories-first --total-size --sort modified --reverse --hyperlink --icons --color "always"'
alias ll='eza --header --long --no-permissions --no-user --binary --time "modified" --time-style "+%m/%d|%H:%M%p" --git --tree --level 2 --group-directories-first --total-size --sort modified --reverse --hyperlink --icons --color "always" | bat'
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
alias github-sync="$HOME/repos/go/go-github-sync && go run . && $HOME && v -O $HOME/CHANGELOG.md +Outline +OutlineFocusCode +\"tabnew\" +\"e $HOME/PROJECTS.md\" +Outline +OutlineFocusOutline"
###########################################################
# Frequently Edited Files
###########################################################
# Planning
alias changelog="v -O $HOME/CHANGELOG.md +Outline +OutlineFocusOutline"
alias journal="v -O $HOME/journal/journal.md +Outline +OutlineFocusOutline"
alias tasks="v -O $HOME/journal/tasks.md +Outline +OutlineFocusOutline"
# Config
alias ba="v $HOME/.bash_aliases"
alias gi="v $HOME/.gitignore"
alias cs='$SWAY && v .'
alias cv='$NVIM && v .'
alias cvs='$NVIM/snippets && v .'
alias cvi='$NVIM && v init.lua'
alias cvp='$NVIM/lua/plugins && v .'
alias ck='$CONFIG/kanshi && v config'
alias cb='$FISH && v config.fish'
alias ct='$KITTY && v kitty.conf'

# Personal Site
alias site="$HOME/repos/sites/personal-site/docs && v ."
alias reflect="$HOME/repos/sites/personal-site/docs/writings && v reflections.md"

