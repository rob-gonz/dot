#!/bin/sh

#Configuration file name
config_file = '.tmux.conf'


echo "Applying tmux configuration to $USER"
echo "cp -ip $config-file ~/$config_file"

cp -ip $config_file ~/$config_file
