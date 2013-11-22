# usuario@host:current_path
export PS1='\u@\h:\[\033[01;34m\]\w\[\033[00m\]'

# Mostrar o branch, do git, atual. Quando a pasta atual estiver no git.
export PS1=$PS1'$(__git_ps1 " \[\033[1;32m\](%s)\[\033[0m\]")'

# Quebrar linha e colocar o $ .
export PS1=$PS1'\n\[\033[0;33m\]\$\[\033[0m\] '


# Colorir a resposta dos comandos no terminal.
#export CLICOLOR=1

#alias vim='/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/MacOS/Vim'
#alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias emacs='echo "segmentation fault"'

# ls
alias ls="ls -G"

# Grep ignoring directories
alias grep="grep --color='auto'"
alias grep_project='grep -r --exclude-dir=.git --exclude-dir=.sass-cache --exclude-dir=coverage --exclude-dir=tmp --exclude-dir=log'

