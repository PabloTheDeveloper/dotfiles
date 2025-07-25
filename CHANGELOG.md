Contains updates on day to day programming.

# Changelogs
Contains up
## 2025-07-24

### Carbon:
- [x] Need to make nuc upload its `.bash_aliases` file.
- [x] Fix i3 bar on snapdragon.
- [x] Add git diff to Nvim. (:Neogit)

#### Learnings:
* I3blocks requires `make` calls to compile and build
  binaries. The apt repo can have outdated packages like it
  did for the `i3blocks` package so sometimes I gotta install
  from the repo.

## 2025-07-21
### Go Github Sync:
- [x] create sync project go-github-sync
  - [x] import golang-project-starter and use it
  * Realized golang-project-starter is missing a
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
    replacement and the former is a function of some kind.
### **Carbon**:
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

