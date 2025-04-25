# Tasks
- [x] Enable all history being tracked in shell with export HISTTIMEFORMAT="%F %T " and https://unix.stackexchange.com/questions/736371/how-do-i-get-terminal-to-print-command-history-with-timestamps-for-all-commands
- [ ] Create sessions in history based on commit message (maybe by specifying a certain command?)
- [ ] Make it so on commit, the history gets exported and I am prompted to write a doc on what was added and why - most likely in the commit message
  itself
- [ ] have a way to export the commit messages.

## History Log Sessions - Rationale
To replilcate environments, it is really crucial
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

