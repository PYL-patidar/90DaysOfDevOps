## Part 1 
- Launch Cloud instance :
Command : Create an instance
Command : Connect with SSh

## Part 2
- Install Nginx & Docker
- step 1 : firstly update the system
Command : sudo apt update
- step 2 : install nginx
Command : sudo apt install nginx
- step 3 : Varify nginx
Command : systemctl status nginx
Output : nginx service acive and enabled
- step 4 : Now install docker
Command : sudo install docker.io
- step 5 : varify docker running
Command : systemctl status docker
Output : docker active and enabled

## Part 3
- Configure security group
- step 1 : First check nginx can accessible from public ip and if not then go to step 2
- step 2 : Go to security group and open port 80
- step 3 : reload browser now ngix running

## Part 4
- Extract nginx logs
- step 1 : To see the logs
Command : journalctl -u nginx -n 20 
- step 2 : save logs
Commands : journalctl -u nginx -n 20 | tee -a nginx-logs.txt
- step 3 "  
