Contains updates on day to day programming.

# Changelog Q32025
## 2025-07-22 (planned)
### Go Github Sync:
- [ ] Execute bash command that does this.
* The logic is easy - walk the directories and call git
  pull on each one.
- [ ] Track state of the pulls in some home file. Only
  start up if it hasn't been done for that day or that
  there isn't an entry.
- [ ] Translate to Golang & create a integration test
  (key for other scripts so needs to be done).
### Go Session Logger:
- [ ] Programmatically open Tmux in split view.
- [ ] Programmatically open Nvim in vertical split view with
  CHANGELOG.md and PROJECTS.md in the left tmux pane.
- [ ] Open terminal session on the right.
- [ ] Write instructions in CHANGELOG.md at the new
  entry.
- [ ] Have me carry over / edit the previous day's todos
  and select only a few for that day.
- [ ] Have it write down the timestamp somewhere.
- [ ] Have it create and write the history output to
  different days.

* Lots of this is still in flux until I figure out a
  good workflow. I do like keeping everything in nvim.
* Using Tmux lets me map OS keys for dedicated workflows
  like streaming a Youtube video, continueing on my
  project work, checking my email, exercising etc.

### Carbon:
- [ ] Need to make nuc upload it's `.bash_aliases` file.
- [ ] Fix i3 bar on snapdragon.
- [ ] Add git diff to Nvim.
- [ ] Add lua function that wraps a checkbox,
  considering spaces of course, with tildes
  and add a time like so ~~ - [x] foobar \[8:30PM\] ~~
- [ ] Add lua function that create a checkbox (harder
  than above) with the timestamp and is created at the
  right nesting level without issue.
- [ ] Update live markdown visualizer to not add spaces
  between headers and text that follows.

## 2025-07-21
### Go Github Sync:
- [x] create sync project go-github-sync
  - [x] import golang-project-starter and use it
  * Realized it's golang-project-starter is missing a
    .gitignore file for the binary I'd generate with
    `go build`.
### Go Project Starter:
- [x] run project starter for go-github-sync
- [x] Add .gitignore to
    golang-project-starter.
- [x] Always add a .gitignore
    file to binaries created.
#### Learnings
* I didn't know that
    {{foobar}} is different from
    {{.foobar}}. The latter is a
    replacement and the former
    is a function of some kind.
### **Carbon**:
* 
- [x] Updated vim settings to split
	right and split bottom.
    * It drove me nuts how it would open on the left
      when I'm used to it opening on the right.
- [x] Updated PROJECTS.md and created CHANGELOG.md to
  better organize projects. Created a description for
  the go-session-logger.
#### Learnings:
* Learned I can use :term and create nvim session inside it.
* :luafile $PATH\_TO\_INIT\_FILE
	SYNCS\_CHANGES lets me sync files instantly.
* Ctrl+\ + Ctrl+n/o will let me get out of terminal
  mode.
