# Path to your oh-my-zsh installation.

export ZSH=/Users/timothy.ye/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(gitfast autojump sublime web-search zsh-autosuggestions extract kubectl)

# User configuration

export PATH="/usr/local/Cellar/mysql/5.7.13/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/Timothy/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8


unset GEM_HOME
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

export DYLD_LIBRARY_PATH=/usr/local/opt/mysql/lib:$DYLD_LIBRARY_PATH
export EDITOR="/usr/local/bin/nvim"
export VISUAL="/usr/local/bin/nvim"

#ENV parameters for conan
export CONAN_USERNAME=user
export CONAN_CHANNEL=stable
								 
#ENV parameters for golang
export GOPATH=$HOME/workspace
export GOBIN=$HOME/workspace/bin
export GOROOT=/usr/local/Cellar/go/1.19.2/libexec
export GOPROXY=direct
export GOVCS=*:all
export GOPRIVATE="git.garena.com"
export PATH=$PATH:$GOPATH/bin:/usr/local/Cellar/go/1.19.2/bin:$HOME/.cargo/bin:/Users/timothy.ye/.local/bin

export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"
#Java ENV
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_291.jdk/Contents/Home
PATH=$PATH:$JAVA_HOME/bin:/Users/timothy.ye/apache-maven-3.8.1/bin

#Env configuration for anaconda
export PATH=$PATH:~/anaconda2/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(thefuck --alias)"
alias mysql='/usr/local/opt/mysql/bin/mysql'
alias mysqladmin='/usr/local/opt/mysql/bin/mysqladmin'

alias code="/Applications/Visual\ Studio\ Code\ -\ Insiders.app/Contents/Resources/app/bin/code"
alias cat="bat"
alias more="cat"
alias y="ydict"
alias vi="lvim"
alias vim="lvim"
alias tmux="tmux -2"
alias ssh="ssh -X"
alias s="ssh -X"
alias md="mkdir -p"
alias rd="rmdir"
alias df="df -h"
alias mv="mv -i"
alias slink="link -s"
alias ls='lsd'
alias l="ls -l"
alias la="ls -a"
alias ll="ls -la"
alias lt="ls -lhtrF"
alias l.="ls -lhtrdF .*"
alias grep="grep --color=auto"
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias zb="cat /dev/urandom | hexdump -C | grep --color=auto \"ca fe\""
alias mtr="/usr/local/bin/mtr"
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
alias pro="proxychains4"
alias gb="go build"

alias kc="kubectl"


alias -s go=vi
alias -s html=vi
alias -s rb=vi
alias -s py=vi
alias -s txt=vi
alias -s ex=vi
alias -s exs=vi
alias -s js=vi
alias -s json=vi

# alias for proxy
alias proxy="export ALL_PROXY=socks5://127.0.0.1:7070"
alias unproxy="unset ALL_PROXY"
alias ip="curl -4 ip.sb"
alias ipv6="curl -6 ip.sb"

# Load zsh-syntax-highlighting.
source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#
# Load zsh-autosuggestions.
source ~/.oh-my-zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#

# Enable autosuggestions automatically.
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=10"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/timothy.ye/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/timothy.ye/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/timothy.ye/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/timothy.ye/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# init starship
eval "$(starship init zsh)"
