#-*- coding: utf-8 -*-
#!/bin/bash

# RVM
cat >> ~/.bash_profile <<EOF

# RVM
EOF

\curl -L https://get.rvm.io | bash

source ~/.bash_profile

cat >> ~/.bash_profile <<EOF
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
EOF


## Heroku Toolbelt
echo 'PATH="/usr/local/heroku/bin:$PATH"' >> ~/.bash_profile


# Config Bash

cat >> ~/.bash_profile <<EOF

alias emacs='echo "segmentation fault"'

## ls
alias ls="ls -G"

## Grep ignoring directories
alias grep="grep --color='auto'"
alias grep_project='grep -r --exclude-dir=.git --exclude-dir=.sass-cache --exclude-dir=coverage --exclude-dir=tmp --exclude-dir=log'
EOF
