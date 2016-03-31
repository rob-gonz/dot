#!/bin/sh


#For each directory in the folder apply the configuration
for D in `find . -maxdepth 1 -type d -not -path "./.git" -not -path "."`
do
    #run apply
    echo "Running: sh ${D}/apply.sh"
    cd ${D}
    sh apply.sh
    cd ../
done
