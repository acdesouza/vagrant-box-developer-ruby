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
 1. See your project on ~/root_project_directory

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
 - [-] Use host account on guest:
   - [x] create host user on guest
   - [x] add user to sudoers list
   - [x] install rvm to this user, not Vagrant
   - [ ] Add shared folder host user ownership
   - [ ] set user to ssh
   - [ ] login to this user after vagrant ssh
 - [ ] PostgreSQL
 - [x] Config PS1 bash_profile
 - [ ] Update VirtualBox Guest Additions
 - [ ] Install ruby: Latest stable version or same as Gemfile if present.

# Sources
 - http://simplesideias.com.br/usando-o-vagrant-como-ambiente-de-desenvolvimento-no-windows
 - http://docs.vagrantup.com/v2/
 - https://github.com/dotless-de/vagrant-vbguest
