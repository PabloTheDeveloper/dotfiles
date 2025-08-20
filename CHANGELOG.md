Contains daily logs for for various projects' progress.
The layout is -
```
* <quarter>
    * TODOS // for each project
        * <repo name>
            * <subproject / area>
            * <subproject / area>
            * ...
        * ...
    
    * <date>
        * <repo name>
            * <subproject / area>
            * <subproject / area>
            * ...
        * ...
...
```
# Changelog 2025Q3
## TODOs
### Misc
- [ ] Use https://github.com/bazelbuild/bazel
- [ ] Use https://github.com/abseil/abseil-cpp
- [ ] CopyQ doesn't copy with mod keys
- [ ] Setup Docker.
- [ ] Setup Deepseek locally.
- [ ] Setup search across all commits in a repo.
- [ ] Auto hit enter on certain aliases.
### Dotfiles
- [ ] Add git diff gutter
- [ ] Add git merging
#### Fish
- [ ] Create a custom greeting in fish\_greeting.fish
#### Tmux
- [ ] Setup standard bindings to navigate 
#### Nvim
- [ ] Learn how to fold everything except selection.
    * Very useful for focusing on changes.
- [ ] Go through lua tutorial in nvim.
- [ ] Update snippets to query counts like,
  no sweets, walked, hours, morning sun
  slept, etc
#### Markdown
- [ ] Create git message template for updating changelog
  file at end or start of day with latest or previous
  entries.
- [ ] Prevent empty lines in markdown files.
### Go Github Sync
- [ ] Find Way to Check changes not yet pushed.
- [ ] Setup testing infrastructure.
- [ ] Test with a docker image.
- [ ] Configure to use Go-To
### Go To
- [ ] Make go-to a module to import
- [ ] Make it be called upon using the aliases generated
### Init
- [ ] Configure to use Go-Github-Sync & Go-To
- [ ] Test with a docker image.
- [ ] Add shell script & alias which inserts some command to the
  end of both arch and snapdragon ubuntu setups.
## 2025-08-20
### Misc
- [x] Setup up Digma.
    - [x] Install Bazecor
    - [x] Import settings (from windows).
## 2025-08-10
### Dotfiles
- [x] Try out mod+c and mod+v (do on home computer)
- [x] Fix icons on desktop(awesome icons/fonts)
- [x] Add script for per machine functionality for idlelock
- [x] Create i command per computer.
- [x] Use tabs instead of spaces.
- [x] Setup copy and paste and cut and paste w/o format.
- [x] Setup Ctrl+alt bindings in kitty for chrome like bindings.
- [x] Sync "+y register with clipboard.
- [x] Setup per app sway instances.
- [x] Change vim bindings to use alt, change tmux to use ctrl, and change kitty
  to use both.
## 2025-08-09
### Dotfiles
- [x] Setup vertical git diff (heck ya!)
- [x] Don't use cd -> use paths instead (removed cd in .bash_aliases)
- [x] Update to use l for eza
- [x] Update to use ll for eza (with batcat)
    - [x] Keep colors into batcat
- [x] Use carbonfox on batcat.
- [x] Remap copyq to use arrow keys to navigate tray.
- [x] Update to use kitty instead of foot.
* install list: batcat, git-delta, less
## 2025-08-06
### Golang Project Starter
- [ ] Rename to Go Project Starter
- [ ] Use functions to wrap functionality
### Quotes
- [ ] Create new project for running greetings.
- [ ] Learn about multi package projects maybe?
## 2025-08-03
### Dotfiles
#### Sway
- [x] Update standard bindings to navigate 
- [x] Refractor Sway files.
- [x] Refractor Sway files for vim.
#### Foot
- [ ] Refractor to use Ctrl+C for copying (use Mod+w
  to close wayward terminals)
#### Nvim
- [x] Use tablet.
- [x] Refractor to use Google Chrome like-bindings
## 2025-08-02
### Misc
- [x] Find Golang docs but as a markdown or txt file. (not exactly doable but can run localserver and access w/ lynx).
### Dotfiles
- [x] Fix .gitignore files
#### Nvim
- [x] allow window resize with mouse.
- [x] Learn how to paste into current line? (select with visual selection and paste is
  easiest.)
- [x] Show registers always in some window (gennaro-tedesco/nvim-peekup)
- [x] Added func to clear named registers ":WipeReg"
## 2025-08-01
- Didn't do much today other than push changes and
  fix the module-publisher a bit.
* I think, also to change the aliases to use all
  caps?
## 2025-07-31
### Module Publisher
- [x] Created and somewhat ready for it to be functional.
### Quotes
- [x] Publish as a module. (started: 06:55) (completed: 07:12 PM) created a
  module for it. It's a bit more complex than first thought.
### Go Github Sync
- [x] Have it push once it pulls changes
    * The concern here is with merge conflicts.
    * I suppose I can remember when I'm using this.
## 2025-07-30
### Dotfiles
- [x] Figure out why if I make a `.config/` change, it
  doesn't get tracked even if I do git add * and even if the
  `git config set advice.addIgnoredFile false` is set.
  * This was because the I didn't add a /* to the
    end.
- [x] Startup Copyq on each sway instance.
- [x] Use Mod+N, Mod+P, to, pop open copyq, and
  navigate up/down copying.
- [x] Make copyq dark (although can't seem to add to
  repo :/ )
#### Markdown
- [x] Add started, paused and completed, yesterday, tommorow snippets to generate timestamp with those tags. (completed: 07:38 PM)
- [x] Add alias `changelog` to startup a changelog instance.
#### Nvim
- [x] Add env var for NVIM and other configs often gone to.
- [x] Show whitespace. (the :set list command does it)
## 2025-07-29
### Misc
- [x] installed fuse on desktop which is required to setup Bazecor
- [x] use main as default branch name instead of master
- [x] Setup desk to be more easier to work.
### Dotfiles
- [x] fix fish error msg caused by using '-' in export and alias function
* Note, bash would have complained too - so fish's rules help here.
### Go Github Sync
- [x] Get sync more functional by having it import correctly.
- [x] Add to .gitignore

## 2025-07-26
### Init
- [x] Fix fonts & icons on snapdragon ubuntu laptop (03:00 PM)
### Dotfiles
- [x] Speed up rate of repeat key and delay (03:21 PM)
#### Terminal
  renderer.
- [x] (03:44 PM) Update fish to not have terminal display battery life. (04:01 PM)
- [x] Make fish default shell instead of nesting it within bash. ~~(actually maybe this is
  better - I ended up modifying my exit alias "e") (04:03 PM)~~ actually it was easier to
  just make it the default. Hopefully, I didn't break anything (04:08 PM). (04:14 PM) it
  works.
##### Markdown
- [x] Correct time in snippets - shows 24hr format instead of 12hr format.
  * Using the lua programming lang guide helped here instead of guessing the
    format and hoping I'm right.
- [x] add snippet to create checkbox w/ time (called check)
- [x] add snippet to create date via "date"

## 2025-07-25
##### Markdown
- [x] Update snippets to use date and time
  functionality
- [x] Have it show everything from the outline.

## 2025-07-24

### Dotfiles
- [x] Need to make nuc upload its `.bash_aliases` file.
- [x] Fix i3 bar on snapdragon.
- [x] Add git diff to Nvim. (:Neogit)

#### Learnings
* I3blocks requires `make` calls to compile and build
  binaries. The apt repo can have outdated packages like it
  did for the `i3blocks` package so sometimes I gotta install
  from the repo.

## 2025-07-21
### Go Github Sync
- [x] create sync project go-github-sync
  - [x] import golang-project-starter and use it
  * Realized golang-project-starter is missing a
    .gitignore file for the binary I'd generate with
    `go build`.
### Go Project Starter
- [x] run project starter for go-github-sync
- [x] Add .gitignore to
    golang-project-starter.
- [x] Always add a .gitignore
    file to binaries created.
#### Learnings
* I didn't know that
    {{foobar}} is different from
    {{.foobar}}. The latter is a
    replacement and the former is a function of some kind.
### **Dotfiles**
- [x] Updated vim settings to split
	right and split bottom.
    * It drove me nuts how it would open on the left
      when I'm used to it opening on the right.
- [x] Updated PROJECTS.md and created CHANGELOG.md to
  better organize projects. Created a description for
  the go-session-logger.
#### Learnings
* Learned I can use :term and create nvim session inside it.
* :luafile $PATH\_TO\_INIT\_FILE
	SYNCS\_CHANGES lets me sync files instantly.
* Ctrl+\ + Ctrl+n/o will let me get out of terminal
  mode.

