#!/bin/zsh

# Navigation
setopt auto_cd            # imply cd if not provided (for directories)

setopt auto_pushd         # automatically push old directory onto stack
setopt pushd_ignore_dups  # do not store duplicates in the stack
setopt pushd_silent       # do not print directory stack after pushd or popd

setopt correct            # spell check
setopt cdable_vars        # change directory to path stored in a variable
setopt extended_glob      # extended globbing syntax

# autoload -Uz bd; bd

# History
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history # where to save history
HISTSIZE=1000                 # how many lines to keep in memory
SAVEHIST=1000                 # number of enteries to save
setopt extended_history       # record timestamp of commands
setopt share_history          # share history between sessions
setopt hist_expire_dups_first # delete duplicate commands when trimming history
setopt hist_ignore_dups       # ignore duplicated commands
setopt hist_ignore_all_dups   # delete an old recorded event if duplicate
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_save_no_dups      # do not write a duplicate command to history
setopt hist_verify            # do not execute imediately upon history expansion

# Aliases
alias ls="ls -Gh"   # human readable format
# if [[ ${uname} != "Darwin" ]] then
#   alias ls="ls --color=auto"
# fi
alias la="ls -la"   # show dotfiles
alias rm="rm -i"    # prompt before deleting


# Prompt
export PS1='%n@%m:%F{2}%~%f %F{5}%#%f '

# Completion

# Automatic loading via #compdef in each file (see https://git.io/Jk8zj)
fpath=($XDG_CONFIG_HOME/zsh/plugins/zsh-completions/src $fpath)

autoload -U compinit; compinit
_comp_options+=(globdots) # hidden files
source $XDG_CONFIG_HOME/zsh/plugins/completion.zsh

# Nix package manager
# . $HOME/.nix-profile/etc/profile.d/nix.sh
