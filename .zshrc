#
# zsh/oh-my-zsh settings
#

# Path to your oh-my-zsh installation.
export ZSH="/home/typesafety/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gentoo"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
#
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  vi-mode
)

source $ZSH/oh-my-zsh.sh

#
# Environment variables
#

export PATH="$PATH:$HOME/.local/bin"

#
# Other stuff, needs to come last to not get overwritten
#
# Aliases can act weird if the command is not quoted, write
# 	ll="ls -Ahl"
# rather than
# 	ll=ls -Ahl
#

# Generic environment variables
export PATH=$HOME/.dotfiles/scripts:$PATH
export EDITOR=nvim

alias python=python3

# Make rm/cp/mv a bit safer
alias rm="rm -I"
alias cp="cp -i"
alias mv="mv -i"

# ls aliases
alias ll="ls -AFhl"
alias l="ls -GFhl"
alias la="ls -AFcltr"

# cabal
alias crepl="cabal repl"
alias crun="cabal run"
alias cbuild="cabal build"

# ghcup
[ -f "/home/typesafety/.ghcup/env" ] && source "/home/typesafety/.ghcup/env" # ghcup-env

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# docker
alias dcmp="docker compose"
