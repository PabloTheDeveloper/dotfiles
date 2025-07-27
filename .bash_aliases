alias a="v $HOME/.bash_aliases"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias v="nvim"
# Regarding notes.md project
alias journal="v $HOME/journal/journal.md" # TODO: Update to be a cli which creates forms for me to select from - some journal entries should be structured.
alias tasks="v $HOME/journal/tasks.md" #TODO: Similar to above. Have it accept cli tasks. Have it sync with tablet to use whatever's current image/drawing to be a task. Associate that drawing w/ that task.
alias motivation="v $home/journal/motivation.md"
alias growth="v $HOME/journal/growth.md" #TODO: create CLI which tracks main goals and aspirations. Look to the future for this.
alias no="cd $HOME/repos/sites/personal-site/ && cat mkdocs.yml && cd docs && ls"
alias noc="cd $HOME/repos/sites/personal-site/docs/coding && v changelog.md" #TODO: auto generate this and write it out at 6:30pm
alias nor="cd $HOME/repos/sites/personal-site/docs/writings && v reflections.md"
# adding configs
alias c='cd $HOME/.config'
alias cv='cd $HOME/.config/nvim'
alias cvt='v $HOME/.config/nvim/templates'
alias cvi='v $HOME/.config/nvim && v init.lua'
alias cvp='v $HOME/.config/nvim/lua/plugins'
alias cvs='v $HOME/.config/nvim/snippets/markdown.snippets'
alias cs='v $HOME/.config/sway/config'
alias ci='cd $HOME/.config/i3blocks && v config'
alias cf='cd $HOME/.config/foot && v foot.ini'
alias ck='cd $HOME/.config/kanshi && v config'
alias cw='cd $HOME/.config/wofi && v config'
alias cb='cd $HOME && v .bashrc'
# Tune backlight #TODO/ make a function
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
alias e='exit & exit'
# standard stuff
alias ls='ls --color=auto'
alias grep='grep --color=auto'
# Standard project locations & Github shortcuts
alias u='git pull'
alias init='cd $HOME/repos/init && ls'

# regarding github projects
# Assumes many things... so make it
# a binary at some point.
alias pnew="$HOME/repos/go/golang-project-starter/golang-project-starter --tmpls_path $HOME/repos/go/golang-project-starter/templates --absl_path $HOME/repos/go" #TODO figure out how to install this as a binary and set it up.

alias project="v \"$HOME/repos\" +Outline +OutlineFocusCode +\"vsplit $HOME/PROJECTS.md\" +\"split $HOME/CHANGELOG.md\" +\"tabnew\" +\"term\""
