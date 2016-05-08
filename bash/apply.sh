#!/bin/sh

bashrc_file=~/.bashrc
aliases=.mybash
echo "- - - - - - - - - - - - - - - - - - - - - -"
echo "Applying tmux configuration to $USER"
echo "cp -ip $aliases ~/$aliases"

cp -ip "$aliases" ~/"$aliases"

# Add source to .bashrc file if this particular source is
# is nor already added to the file
if ! grep -q "$aliases" $bashrc_file
then
    echo "Appears $aliases is not sourced in $bashrc_file"
    echo "Appending to $bashrc_file now...."
    
    echo "\n\n" >> $bashrc_file
    echo "#Alias Definitions." >> $bashrc_file
    echo "# Auto inserted by apply.sh script from github.com/THEANONYMOU5/dot.git" >> $bashrc_file
    echo "# You may want to put all your additions into a seperate file like this one" >> $bashrc_file
    echo "# ~/$aliases , instead of adding them here directly." >> $bashrc_file
    echo "# See /usr/share/doc/bash-doc/examples in the bash-doc paackage." >> $bashrc_file
    echo "if [ -f ~/$aliases ]; then" >> $bashrc_file
    echo "    . ~/$aliases" >> $bashrc_file
    echo "fi" >> $bashrc_file

    echo "Done!"
fi


echo "Completed Applying $aliases file to $USER"

source $bashrc_file
echo "Source bash file: done."

