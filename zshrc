ZSH_THEME="robbyrussell"

plugins=(git)

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
source $HOME/.hbc-config
# source ~/.bin/tmuxinator.zsh


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

## Golang
export GOPATH=$WORKSPACE/go
export GO111MODULE=on
alias godir='cd $GOPATH/src/github.com/smeriwether'

## Tmuxinator
alias mux='tmuxinator'


# Path
export PATH="$HOME/bin:/usr/local/bin:$PATH"


# Exports
export WORKSPACE=$HOME/Development
export GIT_EDITOR=vim
export PATH="$GOPATH/bin:$PATH"
export EDITOR=vim


# Software Tools
## Rbenv
eval "$(rbenv init - zsh --no-rehash)"

# added by travis gem
[ -f /Users/stride-admin/.travis/travis.sh ] && source /Users/stride-admin/.travis/travis.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
