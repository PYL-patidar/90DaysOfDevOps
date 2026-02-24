# Day 09 Challenge 

## Users & Groups Created

- Users : barlin, tokyo, professor, nairobi
- Groups : devlopers, admins, project-team

## Group Assingment

- devlopers --> barlin, tokyo
- admins --> barlin, professor
- project-team --> tokyo, nairobi

## Direcories Created

- `dev-project` --> with permission 775
- `team-workspace` --> with permission 775

## Commands used :
- Create Users with home directory: <br>
Commands : sudo useradd -m <user_name> <br>

- Set password of user <br>
Command : sudo passwd <user_name> <br>

- Create Group: <br>
Command : sudo groupadd <group_name>

- Add member to group <br>
Command : sudo usermod -aG <group_name> <user_name> <br>

demo directory create for testing perpose (named dev-project) <br>
- set group (change group) <br>
Command : sudo chgrp <group_name> <dir_name>

- set permission
Command : sudo chmod 775 <dir_name>

Test user enable for read, write and execute operation

## I learned :
how root user and other users are different to each others
know about which can access group assign files
permissions

```

