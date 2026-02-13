 ```
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
- Create Users:
Commands : sudo useradd -m <user_name> <br>
  - add user with directory 
Command : sudo passwd <user_name> <br>
  - set password of user

- Create Group:
Command : sudo groupadd <group_name>

- Add member to group
Command : sudo usermod -aG <group_name> <user_name>

- set group (change group)
Command : sudo chgrp <group_name> <dir_name>


```

