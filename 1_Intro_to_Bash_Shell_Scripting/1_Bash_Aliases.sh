#It is a shortcut to a command
#example = alias server='ssh -p 2299 admin@189.24.5.6'

#alias = command to list all alias commands
#to run the original command not the alias command type = \command (ex = \ls)
#to create new alias = alias alias_name='command_to_run'(example - alias c='clear'), single quotes are neccessary when commands and its options has sapce, if there is no space then single quotes are optional
#when there is no space in command(example) - alias c=clear

#if we exit from the current terminal or open a new session from another terminal then alias we have created is not available here, it will be available only in those terminal in which we have created this alias

#to make the alias persistent we have to declare them in user home directory(~/.bash_profile OR ~/.bashrc) and adding the alias at the end of the file by typing alias c=clear

#in the current terminal, the one in which we have defined the alias, it is not available here because .bashrc is read only when the shell starts, we can open the terminal again by quitting and reopening again, OR we can load the configuration file by 'source .bashrc' to make the alias working

#to remove an  alias in the current session run an alias and name of the alias, ex - unalias c

#to auto update and upgrade = alias update='sudo apt update && sudo apt dist-upgrade -y && sudo apt clean'