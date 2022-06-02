#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo $BASEDIR

# alacritty 
ln -s ${BASEDIR}/alacritty ~/.config/alacritty

# nvim
ln -s ${BASEDIR}/nvim ~/.config/nvim

# tmux
ln -s ${BASEDIR}/tmux ~/.config/tmux
