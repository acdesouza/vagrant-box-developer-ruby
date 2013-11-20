#-*- coding: utf-8 -*-
#!/bin/bash

# Login as HOST_USER
HOST_USER=$1

# http://askubuntu.com/questions/294736/run-a-shell-script-as-another-user-that-has-no-password
RUN_AS="sudo -H -u $HOST_USER bash"

# Heroku toolbelt standalone
wget -qO- https://toolbelt.heroku.com/install.sh | sh

# Heroku Toolbelt
$RUN_AS<<HEROKU_TOOLBELT_INSTALL
echo 'PATH="/usr/local/heroku/bin:\$PATH"' >> \$HOME/.bash_profile
HEROKU_TOOLBELT_INSTALL
