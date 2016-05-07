# dot
I frequently use many linux/debian/ubuntu boxes each day while developing and testing. This repo holds all my favorite linux configurations.  There are apply scripts to quickly setup new environmnets and update existing ones.

(Currently a work in progress)


***

##Applying Changes
In the root of the repo you will see two files, `apply_config.sh` and `Makefile`, capable of applying/deploying configuration. You can use either file/method. It is purely preference and I provide boh options.

### Using apply_config.sh

To apply all available configurations:
````shell
$ ./apply_config.sh
```

Apply a specific $configuration:
```shell
$ cd <configuration folder>
$ apply.sh
```

### Using the Makefile

Usage Reminder:
```shell
$ make
```

To list all programs with configurations available use the `list` rule:
```shell
$ make list
```

To apply all available configurations use the `deploy` rule:
```shell
$ make deploy
```
To apply a specific configuration use the `deploy` rule and set the `CONGIG` variable:
```shell
$ make deploy CONFIG=<config>
```
*Example: I have tmux and emacs configs available, but only want to apply the tmux configs.*
```shell
$ make deploy CONFIG=emacs
```

***
##Configurations

###tmux/
`//TODO add screenshots`

####Managing Panes

* Create panes
```

C-b -          split vertically (top/bottom)
    C-b |          split horizontally (left/right)
```

*Switch panes (arrow keys)
```

       Alt-left       go to the next pane on the left
       Alt-right      (or one of these other directions)
       Alt-up
       alt-down
```
###emacs/
`//TODO: Add the configuration description and screenshots`


###bashrc/
`/3/TODO: Add onfiguration files, description, and screenshots`

***

##Repository Structure
```
-apply_config.sh
-Makefile
-<program>

   -.<program's configuration file>
   -apply.sh
```
The file `<program>/apply.sh` is the script to automatically apply the configuration.

*Any atypical assumptions made about a system will be stated in the details of each configuration.*

***

# Special Thanks
+ [huynguye - linux-configs](https://github.com/huynguye/linux-configs)

# Contributers


