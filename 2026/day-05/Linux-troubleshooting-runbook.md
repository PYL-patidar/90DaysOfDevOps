<h3> Run book for ssh service <h3>

Step by Step guide for troubleshooting a service

<h2>Environment Basics:<h2>
Command : uname -a 
Output : Linux ip-172-31-32-251 6.14.0-1018-aws #18~24.04.1-Ubuntu SMP Mon Nov 24 19:46:27 UTC 2025 x86_64 x86_64 x86_64 GNU/Linux
Obsered : display all system informatioon

Command : lsb_release -a 
Output : 
Distributor ID: Ubuntu
Description:    Ubuntu 24.04.3 LTS
Release:        24.04
Codename:       noble

Observerd : print distribution-specific information <br>

<h2>Filesystem sanity:</h2>
Command : mkdir /tmp/runbook-demo
Output : Directory created Successuly

Command : cp /etc/hosts /tmp/runbook-demo/hosts-copy && ls -l /tmp/runbook-demo
Obsered : 

<h2>CPU / Memory </h2>
Command : top 
