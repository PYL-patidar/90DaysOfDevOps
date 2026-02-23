# Task 
Record output of next such commands, we use >/>> or tee -a  

## To check running processes
  Command : ps -aux | grep ssh | tee ssh-file.txt
  Command : top

## Inspect one systemd service(ssh)
- Check service status
  Command : systemctl status ssh | tee -a ssh-file.txt
  
- Get the detailed information about the service
  Command : systemclt show ssh | tee -a ssh-file.txt

- View service unit files
  Command : systemctl cat ssh | tee -a ssh-file.txt


## Save logs in a file   
  Command:  journalctl -u ssh | tail -n 50 | tee -a ssh-file.txt

