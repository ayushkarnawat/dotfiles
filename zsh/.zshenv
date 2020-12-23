#!/bin/zsh

# XDG
export XDG_CONFIG_HOME="$HOME/Documents/dev/misc/configs"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"

# Editor
export EDITOR="vim"
export VISUAL="vim"

# Zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Paths
export PATH="/Library/TeX/texbin:$PATH"
