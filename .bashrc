export EDITOR=vim
export GOPATH=$HOME/Code/go
export PATH=$PATH:$GOPATH/bin

export HISTTIMEFORMAT="%h %d %H:%M:%S "
export HISTSIZE=10000
export PROMPT_COMMAND='history -a'
export HISTIGNORE="ls:ps:history:top:htop"

# enable bash completion in interactive shells
if [ -f /etc/bash_completion ]; then
 . /etc/bash_completion
fi

### git prompt
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
__git_ps1=""
source ~/.bash_git
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWUPSTREAM="auto"
GREEN="\[\033[1;32m\]"
BLUE="\[\033[1;34m\]"
YELLOW="\[\033[1;33m\]"
DYELLOW="\[\033[0;33m\]"
PURPLE="\[\033[0;36m\]"
COLOR_OFF="\[\033[0m\]"

PROMPT_COMMAND='__git_ps1 "$YELLOW\u$PURPLE@$YELLOW\h$COLOR_OFF $PURPLE\W$COLOR_OFF" " $YELLOW\\\$$COLOR_OFF "'

alias ll='ls -la'
alias nocomm='grep -v "^#'
alias pro='. project dragon'
