if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_hide_untrackedfiles 1

set -g __fish_git_prompt_showupstream "informative"
set -g __fish_git_prompt_char_upstream_ahead "↑"
set -g __fish_git_prompt_char_upstream_behind "↓"
set -g __fish_git_prompt_char_upstream_prefix ""

set -g __fish_git_prompt_char_stagedstate "●"
set -g __fish_git_prompt_char_dirtystate "✚"
set -g __fish_git_prompt_char_untrackedfiles "…"
set -g __fish_git_prompt_char_conflictedstate "✖"
set -g __fish_git_prompt_char_cleanstate "✔"

set -g __fish_git_prompt_color_dirtystate blue
set -g __fish_git_prompt_color_stagedstate yellow
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal

# import bash aliases
source ~/.bash_aliases

# import generated aliases
source ~/.generated_repo_aliases

# import styles
source $SHARE/nvim/lazy/nightfox.nvim/extra/carbonfox/carbonfox.fish

# Created by `pipx` on 2025-07-06 12:58:54
export PATH="$PATH:/home/dev/.local/bin"

# For snapdragon laptop (TODO: auto install
# from tar file - apt-get doesn't have v.0.10+
# which is needed for my plugins).
export PATH="$PATH:/opt/nvim-linux-arm64/bin"
# export env vars
# for default
# locations
export DOWNLOADS="$HOME/tmp/downloads"
export DOCUMENTS="$HOME/files/documents"
export MUSIC="$HOME/files/music"
export PICTURES="$HOME/files/pictures"
export VIDEOS="$HOME/files/videos"

