#!/bin/zsh

# XDG
export XDG_CONFIG_HOME="$HOME/Documents/dev/misc/configs"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"

# Editor
export EDITOR="vim"
export VISUAL="vim"

# ZSH; if ~/.zshenv is symlinked to $ZDOTDIR/.zshenv
export ZDOTDIR="${${(%):-%x}:P:h}"
# ${            :h}   Remove trailing pathname component (man zshexpn)
# ${          :P  }   Get realpath (man zshexpn)
#   ${(%):-  }        Enable prompt expansion (man zshexpn zshmisc)
#   ${     %x}        Name of file containing this line (man zshmisc)

# Paths
export PATH="/Library/TeX/texbin:$PATH"
