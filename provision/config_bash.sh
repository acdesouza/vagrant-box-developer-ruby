#-*- coding: utf-8 -*-
#!/bin/bash

# Login as HOST_USER
HOST_USER=$1

# http://askubuntu.com/questions/294736/run-a-shell-script-as-another-user-that-has-no-password
RUN_AS="sudo -H -u $HOST_USER bash"

# Config Bash
$RUN_AS<<CONFIG_BASH
cat >> \$HOME/.bash_profile <<EOF

# usuario@host:current_path
export PS1='\u@\h:\[\033[01;34m\]\w\[\033[00m\]'

# Mostrar o branch, do git, atual. Quando a pasta atual estiver no git.
export PS1=\$PS1'\$(__git_ps1 " \[\033[1;32m\](%s)\[\033[0m\]")'

# Quebrar linha e colocar o $ .
export PS1=\$PS1'\n\[\033[0;33m\]\$\[\033[0m\] '

alias emacs='echo "segmentation fault"'

## ls
alias ls="ls -G"

## Grep ignoring directories
alias grep="grep --color='auto'"
alias grep_project='grep -r --exclude-dir=.git --exclude-dir=.sass-cache --exclude-dir=coverage --exclude-dir=tmp --exclude-dir=log'
EOF
CONFIG_BASH

