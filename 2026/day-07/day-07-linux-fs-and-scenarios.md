# Linux File system hierachy

- '/'(root) :  The root directory (/) is the top-level directory of the entire Linux file system hierarchy, containing all system files, partitions, and user data.
- '/root' :  The /root directory is the specific home directory for the root user (administrator).
   Think of / as the root of the tree, and /root as a folder located within it.
- '/bin' :  /bin directories in Linux are dedicated areas for storing executable files, commonly known as binaries. These binaries are required for the execution of different commands and programs on a Linux system. The binary folders ensure that these executables are easily accessible to users.
- ' /home ' : The /home directory is a place where all files, documents, and settings related to their account are stored, typically located under the /home directory.
- /etc ' : /etc directory holds all configuration files for system services. It is a central location where important system configuration files and directories are stored.
- '/var' : In Linux, /var is a standard directory that stands for "variable files". As the name suggests, this directory contains data that changes frequently while the system is running.

## Key Subdirecories in '/var'

**/var/log** : Stores system and application logs, such as syslog and auth.log. <br>
**/var/lib** : Contains persistent state information, such as database and package data. <br>
**/var/www** : commonly used to host website data for web server. <br>
**/var/cache** : Holds application cache data to speed up execution. <br>
**/var/run** : Stores temporary data about the system running since last boot. <br>

- '/temp' : "temp" typically refers to the CPU temperature or the temporary file directory (/tmp).
- '/usr' : The /usr directory (which has stood both for UNIX source repository and UNIX system resources) is intended to be a read-only directory that stores files that aren't required to boot the system
- '/opt' : This directory is reserved for all the software and add-on packages that are not part of the default installation


**/var/spool** : Manages queued tasks like print jobs or emails.
