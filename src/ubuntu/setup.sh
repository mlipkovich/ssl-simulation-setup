#!/usr/bin/env bash

# Fail on errors
set -eou pipefail

apt-get update
apt-get install -y \
  supervisor icewm xterm xfonts-base xauth xinit \
  tigervnc-standalone-server \
  openssh-server \
  vim wget

apt-get purge -y pm-utils xscreensaver*
apt-get autoremove -y
apt-get clean -y
