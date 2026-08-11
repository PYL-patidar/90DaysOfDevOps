# Linux Architecture, Processes and Systemd

# 1. Linux Architecture

Application → Shell → Kernel → Hardware

<p align="center">
  <img src="images/Linux-architecture.png" alt="Linux Architecture" width="650">
</p>

1. Application → Applications are programs that users use to perform specific tasks, such as text editors, browsers, compilers, and other software.
2. Shell -> A shell is a command-line interface that allows users to interact with the operating system by entering commands.
3. Kernel -> The Linux kernel is the core component of the operating system. It manages system resources such as CPU, memory, processes, filesystems, networking, devices, and security, and provides services to user-space applications through system calls.
4. Hardware -> Hardware includes physical resources.

## Technically Better Model

User Space ↔ System Call Interface ↔ Kernel Space ↔ Hardware

                    LINUX 
                     │ 
           ┌─────────┴─────────┐
           ↓                   ↓
      USER SPACE          KERNEL SPACE 
           │                   │ 
           └──── System Calls ─┘ 
                    │  
                    ↓
                 Hardware


                    Linux
                      │
        ┌─────────────┴─────────────┐
        │                           │
    USER SPACE                 KERNEL SPACE
        │                           │
    systemd                        Kernel
        │                           │
    Services                  Process management
    nginx                       Memory management
    sshd                        Filesystem
    Docker                      Networking


Here, space refers to a protected area of memory and execution privileges provided by the operating system.

## User Space:

User space contains applications and many user-level programs, shells, system utilities, services, and libraries.

`Examples: bash, ls, python, nginx, docker `

User-space programs cannot directly access hardware or kernel memory. They request kernel services through system calls.

## Kernel Space:

The privileged area where the Linux kernel runs and manages system resources.

Main responsibilities:
  - Process Management → CPU scheduling, multitasking
  - Memory Management → allocation, virtual memory, paging, swapping
  - File System Management → filesystem operations
  - Device Management → device drivers and hardware communication
  - Networking → TCP/IP, sockets, routing
  - Security → permissions, access control

## System Call

A system call is a controlled interface through which a user-space program requests a service from the Linux kernel.  
It is basically a controlled entry point into the kernel.

`Examples:
open()
read()
write()
close()`

# 2. Processes

## Process
A process is a running instance of a program. When we execute a program, Linux creates a process and the kernel manages its resources, scheduling, state, and lifecycle. 

`Example: ps, ps aux, top, pstree, `

Now, when Linux boots, it needs a mechanism to initialize the system and start and manage essential services. On modern systemd-based distributions, this responsibility is handled by systemd.

# 3. Systemd

systemd is the init and service manager. It is typically the first userspace process with PID 1. It starts and manages services, handles dependencies, and manages system startup and shutdown.

`Example: systemctl status nginx`

- systemctl: systemctl is the command-line utility used to interact with and manage systemd and its units, especially services.
- Service: A background/long-running function, usually managed by a service manager


## Process Management Commands: 

| Command   | Purpose                                       | Example                 |
| --------- | --------------------------------------------- | ----------------------- |
| `ps`      | Display running processes                     | `ps`                    |
| `ps -ef`  | Show all running processes with details       | `ps -ef`                |
| `ps aux`  | Display all processes with CPU & memory usage | `ps aux`                |
| `top`     | View running processes in real time           | `top`                   |
| `htop`    | Interactive process viewer                    | `htop`                  |
| `pidof`   | Find the PID of a process                     | `pidof sshd`            |
| `pgrep`   | Search process by name                        | `pgrep nginx`           |
| `kill`    | Terminate a process by PID                    | `kill 1234`             |
| `kill -9` | Forcefully terminate a process                | `kill -9 1234`          |
| `pkill`   | Kill process by name                          | `pkill firefox`         |
| `killall` | Kill all instances of a process               | `killall chrome`        |
| `jobs`    | Show background jobs                          | `jobs`                  |
| `bg`      | Resume a stopped job in the background        | `bg %1`                 |
| `fg`      | Bring a background job to the foreground      | `fg %1`                 |
| `nohup`   | Run a process even after logout               | `nohup python app.py &` |
| `nice`    | Start a process with a priority               | `nice -n 10 command`    |
| `renice`  | Change priority of a running process          | `renice 5 -p 1234`      |

## Process State

🟢 R – Running  
🟡 S – Interruptible Sleep (waiting for an event)  
🟠 D – Uninterruptible Sleep (usually waiting for disk I/O)  
🔴 T – Stopped or traced  
⚫ Z – Zombie (The process has finished execution, but its parent process hasn't collected its exit status yet.)  

A zombie:  
- Uses almost no CPU or memory.  
- Keeps a PID until it's cleaned up.


# User Space, Kernel Space & System Calls — Practical Commands

| Command                  | Use Case                                                                       |
| ------------------------ | ------------------------------------------------------------------------------ |
| `ps -ef`                 | View user processes and kernel threads                                         |
| `top`                    | Monitor CPU usage, including **user (`us`) and kernel/system (`sy`) CPU time** |
| `strace ls`              | Observe system calls made by a command                                         |
| `strace -c ls`           | Get a summary of system calls                                                  |
| `strace -p <PID>`        | Trace system calls of a running process                                        |
| `cat /proc/<PID>/status` | Inspect process information from the kernel                                    |
| `cat /proc/<PID>/maps`   | View a process's memory mappings                                               |
| `vmstat 1`               | Monitor CPU, memory, swap, I/O, and system activity                            |


## Process Creation

- As we power on our system firstly BIOS loads the hardwares. BIOS is a pre-installed firamware on motherboad that is initialize the hardwares and perform POST(Power-On-Self-Test). Then GNU GRUB(grand Unified Bootloader) is a software that is load the operating system and our system starts to run. As soon as system runs the first process to run is systemd/init PID 1 and systemctl is controller that are attached with the process.  

- Kernel is a machine that works on binary language we can't directly interact with that. so for communicate with the Kernel we have to give the instrucation to Shell and the talk with kernel. 
The kernel runs in privileged mode and provides controlled services to user-space programs through system calls.

- When the system starts, the first process that runs On systems using systemd, systemd runs as PID 1. and along with it, the systemctl command is used to control and manage all system processes."

<p align="center">
  <img src="images/System-starting-process.jpg" alt="Linux Architecture" width="630">
</p>
