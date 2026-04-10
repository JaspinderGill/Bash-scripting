$0 && $0 &
#It is called Fork bomb

#WAYS TO PREVENT THIS ATTACK
ulimit -u #tells number of available processes for the current user
ulimit -a # to see a lot of limits available to the shell and the process it creates

#to prevent the fork bomb we can lower the number of processes user can start
sudo vim /etc/security/limits.conf #at the end of this file add the following line
# Student(username)       hard        nproc       2000(value to limit the user process to 2000)
# @admins(group name)     hard        nproc       2000