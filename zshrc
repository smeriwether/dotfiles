# Default zsh config

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

autoload -Uz compinit
compinit

source $ZSH/oh-my-zsh.sh

# User configuration

alias up='cd ..'
alias upp='cd ../..'
alias uppp='cd ../../..'
alias del='trash'

HISTSIZE=5000           # How many lines of history to keep in memory
HISTFILE=~/.zsh_history # Where to save history to disk
SAVEHIST=5000           # Number of history entries to save to disk
HISTDUP=erase           # Erase duplicates in the history file
setopt appendhistory    # Append history to the history file (no overwriting)
setopt sharehistory     # Share history across terminals
setopt incappendhistory # Immediately append to the history file, not just when a term is killed
