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
- [ ] Setup up Digma.
    - [ ] Install Bazecor
    - [ ] Import settings (from windows).
- [ ] Setup dygma on linux (arm linux version won't work)
### Dotfiles
- [ ] Add git diff gutter
- [ ] Add git merging
#### Sway
- [ ] Update standard bindings to navigate 
#### Tmux
- [ ] Setup standard bindings to navigate 
#### Nvim
- [ ] Go through lua tutorial in nvim.
- [ ] Show whitespace
- [ ] Update snippets to query counts like,
  no sweets, walked, hours, morning sun
  slept, etc
- [ ] Setup standarized bindings to navigate
### Go Github Sync
- [ ] Setup testing infrastructure
- [ ] check for pushes
### Go To
- [ ] Make go-to a module to import
- [ ] Make it be called upon using the aliases generated
### Init
- [ ] Configure to use Go-Github-Sync & Go-To
- [ ] Test with a docker image.
- [ ] Add shell script & alias which inserts some command to the
  end of both arch and snapdragon ubuntu setups.
## 2025-07-31
### Quotes
- [ ] Publish as a module.
### Go Github Sync
- [ ] Have it push once it pulls changes
    * The concern here is with merge conflicts.
    * I suppose I can remember when I'm using this.
- [ ] Configure to use Go-Github-Sync & Go-To
- [ ] Test with a docker image.
## 2025-07-30
### Misc
- [x] Startup Copyq on each sway instance.
- [ ] Use Mod+N, Mod+P, to, pop open copyq, and navigate up/down
  copying.
#### Markdown
- [x] Add started, paused and completed, yesterday, tommorow snippets to generate timestamp with those tags. (completed: 07:38 PM)
- [x] Add alias `changelog` to startup a changelog instance.
#### Nvim
- [x] Add env var for NVIM and other configs often gone to.
- [ ] Go through lua tutorial in nvim.
- [x] Show whitespace. (the :set list command does it)
- [ ] Learn how to fold everything except selection.
    * Very useful for focusing on changes.
### Init
- [ ] Add shell script & alias which inserts some command to the
  end of both arch and snapdragon ubuntu setups.
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

