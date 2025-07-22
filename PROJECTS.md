# Misc:
- [ ] Fix i3 bar
- [ ] 

---
# Tasks
- [x] Enable all history being tracked in shell with export HISTTIMEFORMAT="%F %T " and https://unix.stackexchange.com/questions/736371/how-do-i-get-terminal-to-print-command-history-with-timestamps-for-all-commands
- [ ] Create sessions in history based on commit message (maybe by specifying a certain command?)
- [ ] Make it so on commit, the history gets exported and I am prompted to write a doc on what was added and why - most likely in the commit message
  itself
- [ ] have a way to export the commit messages.

## History Log Sessions - Rationale
To replicated environments, it is really crucial
to keep track of which packages are installed
and which files are updated.

For example, if I wanted to update the linux
console fonts, I needed to update the
/etc/vconsole.conf file with fonts present in
the directory shown in `setfont -h`.

Mine looks like this:
```
# This is the fallback vconsole configuration provided by systemd.

KEYMAP=us
FONT=Uni4-Terminus28x14
```

For this font to load, I needed to run `pacman -S
terminus-font` as well.

Note: this is not the same as updating a
standard terminal **emulator** which I was most
familar with beforehand. The linux console
doesn't use a display manager from what I've
gathered and all the features those grant. That
is why the `foot` or `kitty` aren't runnable in
it. That and many applications aren't.

Perhaps in the future I can see about using it?
I imagine it adds 30m more to my battery life
but I do enjoy seamlessly moving my windows to
my heart's contents with `sway`.

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

# Keybindings
~~- [x] Update Nvim to use most bindings from Google Docs (I have my reasons)~~
* This is mostly supported and I'm find with things not in parity atm (Q32025)
~~- [ ] Update VSCode to use most bindings from Google Docs (I have my reasons)~~
* VSCode can wait. Text editor simplicity is much more preferred.

# Nvim specific 
- [ ] create snippets for common tasks (making a dated journal entry or making a website entry)
- [ ] create templates for certain file types (package is imported but not implemented for README.md files)
- [ ] allow header collapsable section 
- [x] lsp for lua
# One True Editor
Fundamentally, there a finite set of workflows one follows when writing code in some source control that gets deployed and tested.
This is editor agnostic. I should identify those and identify sensible keybindings that best fit these ideas.
For my use case, as my laptop has horrid battery life, I will start with nvim and expand to VSCode and then prompt using editors.

# History Session Logger
I should track everything going on with my laptop.
By everything I mean shell commands, packages installed, config changes,
websites visited, tabs viewed, content copied to clipboard, etc.
This can help me reproduce any issue I'm encountering and encourage a
simplier path to rollback. It can help me write docs on what I'm doing and
observe myself and thinkings.

# Projects


