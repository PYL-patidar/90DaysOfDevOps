for record the logs run script session.log file and then 

1) process check :
   ps aux
   top
   htop

2) service check :
   systemctl status <service_name>(ssh)
   systemctl --failed
   systemctl list-unit-files

3) log check :

journalctl -u ssh
   
