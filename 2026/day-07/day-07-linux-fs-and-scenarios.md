# -- Part 1 --
# Linux File system hierachy

- `/`(root) :  The root directory (/) is the top-level directory of the entire Linux file system hierarchy, containing all system files, partitions, and user data.
- `/root` :  The /root directory is the specific home directory for the root user (administrator).
   Think of / as the root of the tree, and /root as a folder located within it.
- `/bin` :  /bin directories in Linux are dedicated areas for storing executable files, commonly known as binaries. These binaries are required for the execution of different commands and programs on a Linux system. The binary folders ensure that these executables are easily accessible to users.
- ` /home ` : The /home directory is a place where all files, documents, and settings related to their account are stored, typically located under the /home directory.
- `/etc ` : /etc directory holds all configuration files for system services. It is a central location where important system configuration files and directories are stored.
- `/temp` : "temp" typically refers to the CPU temperature or the temporary file directory (/tmp).
- `/usr` : The /usr directory (which has stood both for UNIX source repository and UNIX system resources) is intended to be a read-only directory that stores files that aren't required to boot the system
- `/opt` : This directory is reserved for all the software and add-on packages that are not part of the default installation
- `/var` : In Linux, /var is a standard directory that stands for "variable files". As the name suggests, this directory contains data that changes frequently while the system is running.

## Key Subdirecories in '/var'

- /var/log : Stores system and application logs, such as syslog and auth.log. <br>
- /var/lib : Contains persistent state information, such as database and package data. <br>
- /var/www : commonly used to host website data for web server. <br>
- /var/cache : Holds application cache data to speed up execution. <br>
- /var/run : Stores temporary data about the system running since last boot. <br>
- /var/spool : Manages queued tasks like print jobs or emails. 
<br>

# -- Part 2 --

# Scenario Based practice
**Scenario 1**
#### If any service failed what commnad will used to diagonised to this situation 
- step 1 : systemctl status myapp <br> 
Why : To check the current status running or failed

- step 2 : systemctl is-enabled myapp <br>
Why : check service started after reboot

- step 3 : journalctl -u myapp -n 50 <br> 
Why : see the logs to know more about service

**Scenario 2**
#### Application server is slow which comnand used for find process that hold high CPU utilization
- step 1 : top <br>
Why : To see the snapshot of currently active process 

- step 2 : htop <br>
Why : To see the currently active process in more formatted way

- step 3 : ps aux --sort=-%cpu | head -n 50 <br>
Why : sort the output of current running process based on cpu usage

**Scenario 3**
#### where are the logs for docker service
- step 1 : systemclt status docker <br>
Why : To confirm service running or not

- step 2 : journalctl -u docker <br>
Why : To see the log of docker service. journalctl holds entire log files for services <br>

- stepp 3 : journalctl -u docker -n 50 <br>
Why : give a specific number of log

- step 4 : journalctl -u docker -f <br>
  Why : give real time logs with -f flag

**Scenario 4**
- step 1 : check current permission <br>
Command : ls -l /home/user/backup.sh <br>
Output : -rw-rw-r-- 1 ubuntu ubuntu  0 Feb 12 16:44 hello.sh ('x' not available means not executable permission)

- step 2 : add execute permisiion <br>
Command : chmod +x /home/user/backup.sh

- step 3 : varify it Worked <br>
Command : ls -l /home/user/backup.sh <br>
Output : -rwxrwxr-x 1 ubuntu ubuntu  0 Feb 12 16:44 hello.sh ('x' = executable)

- step 4 : Try running it <br>
Command: ./backup.sh
