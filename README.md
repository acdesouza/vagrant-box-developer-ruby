Vagrant Box for(me, as) a Ruby Developer.
# Vagrant Box for a Ruby Developer

## Intent

Use a sandbox environment to develop Ruby projects, so I can mess things up whitout destroy productivity.

## Getting started

### Install

 1. Install VirtualBox and VirtualBox Extension Pack: https://www.virtualbox.org/wiki/Downloads
 1. Install Vagrant: http://downloads.vagrantup.com/tags/v1.3.5
 1. Download Vagrantfile, and provision directory, to your Ruby project root.
 1. vagrant up
 1. vagrant ssh
 1. See your projec on ~/root_project_directory

### Usage

 1. Edit your files on host.
 1. Run code on guest.


## Instaled programs by Vagrant provision

 - [x] Git
 - [x] RVM
 - [x] ImageMagick
 - [x] Heroku Toolbelt
 - [x] PostgreSQL

## Configs

 - [x] Add project name to VirtualBox guest
 - [x] Guest - Memory...: 1GB
 - [x] Guest - CPU......: 2
 - [x] Use host ssh config. Works on OSX Mavericks
 - [x] Share root project directory with guest
 - [x] Allow access, from host, to Unicorn Server, using Foreman. Yep. I love Heroku ;)
 - [ ] PostgreSQL
 - [ ] Config PS1 bash_profile
