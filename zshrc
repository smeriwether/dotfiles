# Oh-my-zsh
export ZSH="/Users/srm/.oh-my-zsh"
ZSH_THEME=robbyrussell
plugins=(git)

autoload -Uz compinit
compinit

# Exports
export WORKSPACE=$HOME/Development
export GIT_EDITOR=vim export PATH="$HOME/bin:/usr/local/bin:$PATH:$GOPATH/bin:$PATH"
export EDITOR=vim

# Aliases
alias up='cd ..'
alias upp='cd ../..'
alias uppp='cd ../../..'
alias del='trash'
alias dev='cd $WORKSPACE'
alias work='cd $WORKSPACE'
alias down='cd $HOME/Downloads'

# Language Aliases
## Ruby/Rails
alias rs='bundle exec rails s'
alias rc='bundle exec rails c'
alias be='bundle exec'
alias ber='bundle exec rspec'
alias rmigrate='bundle exec rails db:migrate RAILS_ENV=development && bundle exec rails db:migrate RAILS_ENV=test'
alias rrollback='bundle exec rails db:rollback RAILS_ENV=development STEP=${STEP:-1} && bundle exec rails db:rollback RAILS_ENV=test STEP=${STEP:-1}'

## Tmuxinator
alias mux='tmuxinator'

## Golang
export GOPATH=$WORKSPACE/go
export GO111MODULE=on
alias godir='cd $GOPATH/src/github.com/smeriwether'

## History
HISTSIZE=5000               # How many lines of history to keep in memory
HISTFILE=~/.zsh_history     # Where to save history to disk
SAVEHIST=5000               # Number of history entries to save to disk
HISTDUP=erase               # Erase duplicates in the history file
setopt appendhistory     # Append history to the history file (no overwriting)
setopt sharehistory      # Share history across terminals
setopt incappendhistory  # Immediately append to the history file, not just when a term is killed

# Emacs bindings
bindkey -e

# Software Tools
## Rbenv
eval "$(rbenv init - zsh --no-rehash)"

source $ZSH/oh-my-zsh.sh
