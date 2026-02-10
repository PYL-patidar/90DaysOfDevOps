<h3> A runbook for ssh service </h3>
<br>
Step by Step guide for troubleshooting a service <br>
for record the output run a script "session.log" and then all commands run 
<br>
<h2>Environment Basics:</h2>
Command : uname -a <br>
Output : Linux ip-172-31-32-251 6.14.0-1018-aws #18~24.04.1-Ubuntu SMP Mon Nov 24 19:46:27 UTC 2025 x86_64 x86_64 x86_64 GNU/Linux <br>
Observed : display all system informatioon <br>
<br>
Command : lsb_release -a <br>
Output :
Distributor ID: Ubuntu
Description:    Ubuntu 24.04.3 LTS
Release:        24.04
Codename:       noble
<br>
Observerd : print distribution-specific information
<br>
<h2>Filesystem sanity:</h2>
Command : mkdir /tmp/runbook-demo<br>
Output : Directory created Successfully<br>
<br>
Command : cp /etc/hosts /tmp/runbook-demo/hosts-copy && ls -l /tmp/runbook-demo <br>
Output : -rw-r--r-- 1 ubuntu ubuntu 221 Feb 10 09:18 hosts-copy <br>
Observed : Copied the files from /etc/hosts. Filesystem is writable.
<br>
<h2>CPU / Memory </h2>
Command : ps -o pid, pcpu, pmem, comm -p <pid> <br>
Output : PID %CPU %MEM COMMAND 5501  0.0  0.0 sshd<br>
Observed : Process running and CPU & Memory usage is negligible. <br>
<br>
Command : free -h <br>
OutPut : Total: 914Mi, Used: 350Mi, Free: 270Mi, shared: 2.7Mi <br>
Observed : Sufficient Memory Available <br>
<br>
<h2>Disk / IO</h2>
Command : df -h <br>
Output : /dev/root    6.8G size, 1.9G Used, 4.9G Avail  29% use, / Mounted on <br>
Observed : Root partition more than 70% Available <br>
Command : iostat <br>
Output : avg-cpu:  %user   %nice  %system %iowait  %steal   %idle 
                   0.12    0.00   0.06    0.02     0.01    99.79 
  <br>
Observation : CPU idle= 99.79% -> which is healthy. iowait= 0.02% -> small percentage of CPU time waiting for I/O. system= 0.06% -> low. user= 0.12%. about 1% CPU time is spent on user processes. 
<br>
<h2>Network </h2><br>
Command : sudo ss -tulpn | grep sshd<br>
OutPut : tcp   LISTEN 0      4096              0.0.0.0:22        0.0.0.0:*    users:(("sshd",pid=899,fd=3),("systemd",pid=1,fd=181))
  <br>
Observation : ssh is listening on port 22
<br>
Command : ping <ip-address> <br>
Output : 64 bytes from 172.31.32.251: icmp_seq=36 ttl=64 time=0.028 ms
         64 bytes from 172.31.32.251: icmp_seq=37 ttl=64 time=0.025 ms
         ......
  <br>
Observed : send ICMP ECHO_REQUEST to network hosts  <br>
<br>
<h2>Logs</h2> <br>
Commands: journalctl -u ssh -n 50 <br >
Observation : Last 50 lines shows normal authentication attempts no errors or warnings. <br>
Command : tail -n 50 /var/log/<file>.log <br>
Observation : Recent login attempts record. No suspicious activity detected. <br>
<br>
<h2>If this worsens</h2> <br>
Restart SSH service and monitor logs <br>

