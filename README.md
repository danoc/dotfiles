# `dotfiles`

This is a collection of my (few) dotfiles.

# Installation

Clone this repo locally and then follow the instructions below for each service.

## `.zshrc`

Add this to a `.zshrc` file:

```bash
if [ -f ~/Projects/danoc/dotfiles/.zshrc ]; then
    source ~/Projects/danoc/dotfiles/.zshrc
else
    print "404: ~/Projects/danoc/dotfiles/.zshrc not found."
fi
```

Change the path in the code snippet to the location of your cloned repo.

## iTerm2

1. Go to Preferences > General > Preferences.
2. Check the "Load preferences from a custom folder or URL" checkbox and select the location of this cloned repo.
3. Check the "Save changes to folder when iTerm2 quits" if you'd like to persist any additional customizations.
