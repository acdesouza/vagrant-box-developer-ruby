#-*- coding: utf-8 -*-
#!/bin/bash

# Login as HOST_USER
HOST_USER=$1

# http://askubuntu.com/questions/294736/run-a-shell-script-as-another-user-that-has-no-password
RUN_AS="sudo -H -u $HOST_USER bash"

# Config Bash
$RUN_AS<<CONFIG_BASH
cat /vagrant/provision/assets_bash_profile.sh >> \$HOME/.bash_profile
CONFIG_BASH

