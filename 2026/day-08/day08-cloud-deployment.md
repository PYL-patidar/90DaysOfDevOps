# Day 08 – Cloud Server Setup: Docker, Nginx & Web Deployment

## Part 1 
- Launch Cloud instance : <br>
Command : Create an instance <br>
Command : Connect with SSh

## Part 2
- Install Nginx & Docker

- step 1 : firstly update the system <br>
Command : sudo apt update

- step 2 : install nginx <br>
Command : sudo apt install nginx

- step 3 : Varify nginx <br>
Command : systemctl status nginx <br>
Output : nginx service acive and enabled

- step 4 : Now install docker<br>
Command : sudo install docker.io

-  step 5 : varify docker running <br>
Command : systemctl status docker <br>
Output : docker active and enabled

## Part 3
- Configure security group
- step 1 : First check nginx can accessible from public ip and if not then go to step 2
- step 2 : Go to security group and open port 80
- step 3 : reload browser now ngix running

## Part 4
- Extract nginx logs
- step 1 : To see the logs <br>
Command : journalctl -u nginx -n 20 
- step 2 : save logs
Commands : journalctl -u nginx -n 20 | tee -a nginx-logs.txt
- step 3 "  
