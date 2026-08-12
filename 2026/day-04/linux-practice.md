# Linux Service and Process Inspection practice

## Find a Service

`systemctl list-units --type service --state running`

Look for something like:

Output: 
`ssh.service
nginx.service
cron.service`

I choose `ssh` service

## Process Checks

### 1. Check SSH Processes
`ps aux | grep -w ssh`

Output
`ubuntu      2867  0.0  0.2   7276  2400 pts/4    S+   11:49   0:00 grep --color=auto -w ssh`

- ps shows information about running processes.

### 2. Find SSH daemon process

`pgrep -a sshd`

Output:
`680 sshd: /usr/sbin/sshd -D -o AuthorizedKeysCommand /usr/share/ec2-instance-connect/eic_run_authorized_keys %u %f -o AuthorizedKeysCommandUser ec2-instance-connect [listener] 0 of 10-100 startups
1032 sshd-session: ubuntu [priv]
1151 sshd-session: ubuntu@pts/0
1576 sshd-session: ubuntu [priv]
1631 sshd-session: ubuntu@pts/1
1720 sshd-session: ubuntu [priv]
1776 sshd-session: ubuntu@pts/2
2412 sshd-session: ubuntu [priv]
2535 sshd-session: ubuntu@pts/3
2618 sshd-session: ubuntu [priv]
2674 sshd-session: ubuntu@pts/4`

<img width="1892" height="443" alt="Screenshot (27)" src="https://github.com/user-attachments/assets/dbcb364c-6eeb-4bbb-8f94-f9c7162f1a3d" />

- pgrep helps find a process using its name.

## Service Checks

### 3. Check SSH Service status

`systemctl status ssh`

Output:

<img width="1920" height="801" alt="Screenshot (23)" src="https://github.com/user-attachments/assets/2ab955c1-2814-4806-ae84-9044116942e2" />

- systemctl status shows whether the service is running, its PID, start time, and recent service information.

### 4. Check whether SSH starts at boot

`systemctl is-enabled ssh`

Output:

`disabled`

- systemctl is-enabled tells whether the service is configured to start automatically during boot.

### 5. Inspect SSH service configuration

`systemctl cat ssh`

Output:
<img width="1920" height="902" alt="Screenshot (26)" src="https://github.com/user-attachments/assets/6e975664-b627-4d46-9e6f-de16ddc94bdc" />

- systemctl cat displays the systemd unit configuration used to manage the service.

## Log Checks
### 6. View SSH logs

`journalctl -u ssh -n 50 `

Output:

<img width="1920" height="1087" alt="Screenshot (25)" src="https://github.com/user-attachments/assets/0ed74ebf-a684-485e-96ed-51f557672e92" />

- journalctl -u shows logs related to a specific systemd service.

### 6. Follow SSH logs in real time

`journalctl -u ssh -f`

Output:

<img width="1856" height="626" alt="Screenshot (24)" src="https://github.com/user-attachments/assets/0923d64c-39ad-438b-954e-d82d9a2deaf6" />

- `-f` follows new log entries as they are generated.

# Troubleshooting Steps


