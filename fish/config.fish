if status is-interactive
    # Commands to run in interactive sessions can go here
end

set PATH /root/nvim/bin $PATH
set PATH /root/go/bin $PATH
set GOPATH /root/workspace $GOPATH
set GOPROXY direct $GOPROXY

if test -f /home/tim/.autojump/share/autojump/autojump.fish
    . /home/tim/.autojump/share/autojump/autojump.fish
end

starship init fish | source

alias gs="git status"
alias gsm="git summary"
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
alias gm="git merge"
alias vim="nvim"
