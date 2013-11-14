#-*- coding: utf-8 -*-
#!/bin/bash

# Login as HOST_USER
HOST_USER=$1

# http://askubuntu.com/questions/294736/run-a-shell-script-as-another-user-that-has-no-password
RUN_AS="sudo -H -u $HOST_USER bash"

# RVM
$RUN_AS<<RVM_INSTALL
cat >> $HOME/.bash_profile <<EOF

# RVM
EOF

curl -L https://get.rvm.io | bash

source \$HOME/.bash_profile
cat >> \$HOME/.bash_profile <<EOF
[[ -r \$rvm_path/scripts/completion ]] && . \$rvm_path/scripts/completion
EOF
RVM_INSTALL

# Heroku Toolbelt
$RUN_AS<<HEROKU_TOOLBELT_INSTALL
echo 'PATH="/usr/local/heroku/bin:\$PATH"' >> \$HOME/.bash_profile
HEROKU_TOOLBELT_INSTALL


# Config Bash

$RUN_AS<<CONFIG_BASH
cat >> \$HOME/.bash_profile <<EOF

alias emacs='echo "segmentation fault"'

## ls
alias ls="ls -G"

## Grep ignoring directories
alias grep="grep --color='auto'"
alias grep_project='grep -r --exclude-dir=.git --exclude-dir=.sass-cache --exclude-dir=coverage --exclude-dir=tmp --exclude-dir=log'
EOF
CONFIG_BASH
