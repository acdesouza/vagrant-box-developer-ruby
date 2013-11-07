#-*- coding: utf-8 -*-
#!/bin/bash

# Update and upgrade Ubuntu
apt-get -y update

# Git
apt-get -y install git

# PostgreSQL
apt-get install -y postgresql libpq-dev

# RVM Dependencies
## curl
apt-get -y install curl

## ImageMagick
apt-get -y install imagemagick

## node.js - JavaScript VM to execjs
apt-get -y install nodejs
