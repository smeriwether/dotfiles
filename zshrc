ZSH_THEME="robbyrussell"

plugins=(git)

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zshrc.policygenius


# Aliases
alias up='cd ..'
alias upp='cd ../..'
alias uppp='cd ../../..'
alias rs='bundle exec rails s'
alias rc='bundle exec rails c'
alias be='bundle exec'
alias del='trash'
alias dev='cd $WORKSPACE'
alias work='cd $WORKSPACE'
alias down='cd $HOME/Downloads'
alias rmigrate='bundle exec rails db:migrate RAILS_ENV=development && bundle exzec rails db:migrate RAILS_ENV=test'
alias devg='cd $GOPATH/src/github.com'


# Path
export PATH="$HOME/bin:/usr/local/bin:$PATH"


# Exports
export WORKSPACE=$HOME/workspace
export GOPATH=$WORKSPACE/golang

## Other
export GIT_EDITOR=vim

## Golang
export PATH="$GOPATH/bin:$PATH"



# Software Tools
## Rbenv
eval "$(rbenv init - zsh --no-rehash)"

## Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

## kubectl
if [ -x "$(command -v kubectl)" ]; then
  ## GCloud
  source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
  source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc

  ## Kubernetes
  eval "$(kubectl completion zsh)"
  eval "$(helm completion zsh)"
fi

## nvm
# Defer initialization of nvm until nvm, node or a node-dependent command is
# run. Ensure this block is only run once if .bashrc gets sourced multiple times
# by checking whether __init_nvm is a function.
if [ -s "$HOME/.nvm/nvm.sh" ] && [ ! "$(whence -w __init_nvm)" = function ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
  declare -a __node_commands=('nvm' 'node' 'npm' 'yarn' 'gulp' 'grunt' 'webpack')
  function __init_nvm() {
    for i in "${__node_commands[@]}"; do unalias $i; done
    . "$NVM_DIR"/nvm.sh
    unset __node_commands
    unset -f __init_nvm
  }
  for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done
fi
