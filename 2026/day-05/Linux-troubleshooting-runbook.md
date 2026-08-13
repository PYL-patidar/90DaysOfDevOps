# Linux Troubleshooting Runbook
## Target Service

Target: SSH `sshd`

Purpose: 
Perform a basic health check of the Linux system and verify the health of ssh service.


## 1. Environment Basics:

### Check 1: Kernel and system Information
   - `uname -a`

Observation: 
   -  Display all System Information such as kernel name, hostname, kernel release, kernel version, architecture and OS. 

### Check 2: Operating system information
   - `cat /etc/os-release`

Observation: 
   - Print distribution-specific information
   - System is running `Ubuntu 26.04 LTS`.

Output: 
<img width="1110" height="527" alt="Screenshot (30)" src="https://github.com/user-attachments/assets/9fee81c7-1fdf-47a1-ae6d-ddd897eae6d0" />


## 2. Filesystem Sanity:

### Check 1: Create a temporary directory 
   - `mkdir /temp/runbook-demo`

 ### Check 2: Copy and verify the test directory 
   - `cp /etc/hosts /tmp/runbook-demo/hosts-copy && ls -l /tmp/runbook-demo`

Observation: 
   -  Successfully created the temporary directory and copied /etc/hosts into it.

Output:

<img width="1410" height="296" alt="Screenshot (31)" src="https://github.com/user-attachments/assets/de5afc6a-16c9-48d4-bb60-2046d66bbe0e" />


## 3. CPU / Memory:

### Checks 1: Memory Usage
   - `free -h `

Observation:
   - System has 549Mi available memory and 0B swap usage.
   - Memory usage is normal, with sufficient available memory and no significant swap usage.

Output:

<img width="1184" height="278" alt="Screenshot (33)" src="https://github.com/user-attachments/assets/f28b3ee9-9b41-4790-a073-4a6643a342cd" />

### Check 2: Running processes
   - `top`

Output:

<img width="1456" height="864" alt="Screenshot (43)" src="https://github.com/user-attachments/assets/0b7491d4-7440-4906-acfa-b865ae2fe2fe" />

Observation:
   - Observe target process/service.
   - CPU and memory usage were normal during the check. No unusual resource-consuming process was observed.

### Check 3: Find target process and check its CPU/ Memory Usage
   - `pgrep -a sshd`
   - `ps -a pid,pcpu,pmem,comm -p <pid>`

Observation: 
   - The SSH process is using minimal CPU and memory during the check.

Output: 

<img width="1711" height="602" alt="Screenshot (35)" src="https://github.com/user-attachments/assets/30fa1f8d-289a-415f-b7cf-ca43fd06efd4" />

## 4. Disk / IO:

### Check 1: Filesystem disk usage
   - `df -h`

Observation: 
   - The root filesystem is using 21% of its available space. No filesystem is critically full.
   - Root partition more than 70% Available 

Output:

<img width="1223" height="537" alt="Screenshot (36)" src="https://github.com/user-attachments/assets/b5878027-5089-4305-85a2-caa5b946f210" />

### Check 2: Log directory size
   - `du -sh /var/log`

Observation: 
   - /var/log is currently using 41M of disk space.

### Check 3: Disk I/O activity
   - `iostat`

Observation:
   - CPU idle= 99.23% -> which is healthy.
   - iowait= 0.18% -> small percentage of CPU time waiting for I/O.
   - system= 0.18% -> low.
   - user= 0.30%.
   - about 1% CPU time is spent on user processes. 

Output:

<img width="1384" height="710" alt="Screenshot (38)" src="https://github.com/user-attachments/assets/84b665bc-5eba-4d9f-90e3-dcbe38cceb00" />

## 5. Network
### Check 1: Network connectivity
   - `ping`

Observation:
   - Send ICMP ECHO_REQUEST to network hosts.
   - Network connectivity is working, with 0% packet loss.

Output:

<img width="1580" height="598" alt="Screenshot (39)" src="https://github.com/user-attachments/assets/e940dd2a-9174-4c40-b914-f63a1e729817" />

### Check 2: Listening services
   - `ss -tulpne`

Observation:
   - SSH is listening on port 22 and the expected network services are available.

Output:

<img width="1605" height="242" alt="Screenshot (40)" src="https://github.com/user-attachments/assets/9f6125c5-e129-4537-9e86-08eb95dce0bd" />

## 6. Logs

### Check 1: SSH Service Logs 
   - `journalctl -u ssh -n 20`

Observation:
   - The last 50 SSH log entries show session opened for user ubuntu.

Output:

<img width="1740" height="635" alt="Screenshot (41)" src="https://github.com/user-attachments/assets/47228df4-e847-4d8a-aa76-915ebab06c2e" />

## Check 2: Check logs in /var/log/auth.log
   - `tail -n 20 /var/log/auth.log`

Observation: 

   - Recent login attempts record. No suspicious activity detected.

Output:

<img width="1432" height="637" alt="Screenshot (42)" src="https://github.com/user-attachments/assets/561501e5-79f0-4c59-b01d-2c1d63253d9f" />


