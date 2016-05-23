#!/bin/sh

#Configuration file name
config_file = ".emacs.conf"

echo "Applying tmux configuration to $USER"
echo "cp -ip $config_file ~/$config_file"

cp -ip $config_file ~/$config_file
