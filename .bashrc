unset GEM_HOME
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
export RSENSE_HOME=$HOME/.emacs.d/rsense-0.3
export DYLD_LIBRARY_PATH=/usr/local/opt/mysql/lib:$DYLD_LIBRARY_PATH
export EDITOR="/usr/local/bin/mate -w"

#Env settings for cocoapods
export GEM_HOME=$HOME/gems
export PATH=$GEM_HOME/bin:$PATH

#ENV parameters for golang
export GOPATH=$HOME/workspace
export GOBIN=$HOME/workspace/bin
export GOROOT=/usr/local/Cellar/go/1.4.2/libexec
export PATH=$PATH:$GOPATH/bin:/usr/local/Cellar/go/1.4.2/bin

alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
alias mysql='/usr/local/opt/mysql/bin/mysql'
alias mysqladmin='/usr/local/opt/mysql/bin/mysqladmin'

alias ssh="ssh -X"
alias md="mkdir -p"
alias rd="rmdir"
alias df="df -h"
alias mv="mv -i"
alias slink="link -s"
alias sed="sed -E"
alias l="ls -l"
alias la="ls -lhAF"
alias ll="ls -lhF"
alias lt="ls -lhtrF"
alias l.="ls -lhtrdF .*"
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias zb="cat /dev/urandom | hexdump -C | grep --color=auto \"ca fe\""
alias emacs23="open -a Emacs"
alias gs="git status"
alias ga='git add'
alias gd='git diff'
alias gf='git fetch'
alias grv='git remote -v'
alias grb='git rebase'
alias gbr='git branch'
alias gpl="git pull"
alias gps="git push"
alias gco="git checkout"
alias gl="git log"
alias gc="git commit -m"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Settings for gradle
export GRADLE_HOME=/Users/Timothy/Documents/MyCode/gradle-1.12
export PATH=$PATH:/Users/Timothy/Documents/MyCode/gradle-1.12/bin
