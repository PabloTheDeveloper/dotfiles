# Projects
## Q32025
### Go Github Sync
- [ ] Execute bash command that does this.
* The logic is easy - walk the directories and call git
  pull on each one.
- [ ] Track state of the pulls in some home file. Only
  start up if it hasn't been done for that day or that
  there isn't an entry.
- [ ] Translate to Golang & create a integration test
  (key for other scripts so needs to be done).

### Go Session Logger
- [ ] Programmatically open Tmux in split view.
- [x] ~~Programmatically open Nvim in vertical split view with
  CHANGELOG.md and PROJECTS.md in the left tmux
  pane.~~ Actually, I updated the requirements for
  this - it should call the `project` alias instead.
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

### Dotfiles
##### Markdown
- [ ] Auto open :Outline on md files on the left.
- [ ] Auto open :Outline for **each** file split vertically (for
  example a split between PROJECTS.md and CHANGELOG.md would have
  two separate outlines.
- [x] Have it show everything from the outline.
- [ ] Make markdown lint or visualizer not require whitespace between lists or headers.
- [ ] For publishable docs, have it convert some base markdown into commonMark, github flavor markdown, etc..
- [ ] Add summary of different nvim commands I can run.
  - [ ] Figure out how to fold correctly.
- [ ] Add lua function that wraps a checkbox,
  considering spaces of course, with tildes
  and add a time like so ~~ - [x] foobar \[8:30PM\] ~~
- [ ] Add lua function that create a checkbox (harder
  than above) with the timestamp and is created at the
  right nesting level without issue.
- [ ] Update live markdown visualizer to not add spaces
  between headers and text that follows.
#### Git/Github
- [ ] Make it easier to create better commits by:
    1. diff changes
    2. for each file choose to add it to the commit or defer adding it
    3. Write a series of todos that need to be completed for it to make it as a commit
      * ex. write test & have it pass, improve file A w/ comments, etc. This is kinda a self review.
      * Essentially, form some task completion from the interrupted work artifact generated from the work being carried out.
- [ ] Constantly visualize commit tree.
- [ ] Find standardize commit message templates - add them to github templates.
- [ ] Add github actions for CI/CD testing modules.
#### Terminal
# Epic Projects
## Useful Activity Logger

I should track everything going on with my laptop.
By everything I mean shell commands, packages installed, config changes,
websites visited, tabs viewed, content copied to clipboard, etc.
This can help me reproduce any issue I'm encountering and encourage a
simplier path to rollback. It can help me write docs on what I'm doing and
observe myself and thinkings.

### (status: blocked)
till #carbon & #go-session-logger are more completed.

### Tasks
- [ ] Create sessions in history based on commit message (maybe by specifying a certain command?)
- [ ] Make it so on commit, the history gets exported and I am prompted to write a doc on what was added and why - most likely in the commit message
  itself
- [ ] have a way to export the commit messages.
- [ ] ... add more items.

### Detailed Rationale
To replicated environments, it is really crucial to keep track of which packages are installed and which files are updated.

For example, if I wanted to update the linux console fonts, I needed to update the /etc/vconsole.conf file with fonts present in the directory shown in `setfont -h`.

Mine looks like this:
```
# This is the fallback vconsole configuration provided by systemd.

KEYMAP=us
FONT=Uni4-Terminus28x14
```

For this font to load, I needed to run `pacman -S
terminus-font` as well.


Similarly, setting `tlp` or `cpupower-gui`
aren't as intuitive. I'm not sure if those
setting are saved anywhere.

Nor are services I've enabled through
`systemctl`.

To track such changes it makes sense to first
log all my commands executed and their
timestamps. It makes sense to even log which
windows I switch to. It makes further sense to
log which tabs and queries I make on a browser.

If I were to have access to that, it would make
writing docs about my changes a breeze! It would
also provide me a way to answer "What was I
doing?" effectively.
