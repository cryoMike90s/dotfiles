#!/bin/bash

set -eu -o pipefail # fail on error and report it, debug all lines

export INITIAL_PACKAGES="neovim jq make rsync stow tmux"

echo $INITIAL_PACKAGES

apt-get update
apt-get upgrade
apt-get install -y $INITIAL_PACKAGES
