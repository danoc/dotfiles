# `dotfiles`

This is a collection of my (few) dotfiles.

To use this, add this to a `.zshrc` file:

```bash
if [ -f ~/Projects/danoc/dotfiles/.zshrc ]; then
    source ~/Projects/danoc/dotfiles/.zshrc
else
    print "404: ~/Projects/danoc/dotfiles/.zshrc not found."
fi
```

Change the path in the code snippet to the location of your cloned repo.
