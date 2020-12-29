# Dotfiles
A set of configuration files for software development purposes. Particularly
useful for setting up a new computer quickly.

## Installing

### Nix
Follow the instructions for installing the latest version
[here](https://nixos.wiki/wiki/Nix_Installation_Guide).

### Tmux
Since we are not using homebrew, we have to compile Tmux manually.

## TODO
- [ ] Change cursor when editing files using vim. In normal mode, the cursor 
      should be a block; in editing mode, a line.
- [ ] Move nix dotfiles here
- [ ] Tmux install and config
- [ ] Fuzzy finder with fzf
- [ ] Auto rewrap command when editing
- [ ] Change .zshenv, .zshrc filename(s) so that they are not prefixed w/ '.'

## Disclaimer
Since I've built these configs for my workflow, they may require some
(minor) tweaks if you want to use them yourself. Please review the code and
modify things as you see fit. These dotfiles have only been tested on MacOS;
other OS may not work.
