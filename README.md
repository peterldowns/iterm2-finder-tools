# Open iTerm2 from the Finder

This is the up-to-date code accompanying [my blogpost about opening iTerm2
directly from the
Finder](http://peterdowns.com/posts/open-iterm-finder-service.html).

### Installation
You can install the built finder service by double clicking it. You can move
the built app anywhere you'd like, or leave it here; add it to your Finder
toolbar by dragging it in while holding the command and option keys.

### Build
The built files are already shipped in this repo, but if you're hacking on the
scripts (in `application/application.applescript` and
`service/service.applescript`) you can rebuild with the build script (requires
Python 2.something, should work in almost anything, please submit a PR if it
doesn't):

```bash
$ python build.py
```

### To Do:
- [ ] [Support both legacy and modern iTerm2 Applescript Syntax](https://iterm2.com/documentation-scripting.html)
