# Task 

## To check running processes
  Command : ps , top , htop

## Inspect one systemd service(ssh)
- Check service status
  Command : systemctl status ssh
  
- Get the detailed information about the service
  Command : systemclt show ssh

- View service unit files
  Command : systemctl cat ssh

- Check logs for a service
  Command : journalctl -u ssh


## save logs in a file   
1. journalctl -u ssh | tail -n 50 | tee -a ssh-log.txt

