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

## User & Group management Commands:

- Create a Users with home directory: <br>
Command : `sudo useradd -m <user_name> `<br>

- Set password for user <br>
Command : `sudo passwd <user_name>`

- Create a Group: <br>
Command : `sudo groupadd <group_name>`

- Add user to a group <br>
Command : `sudo usermod -aG <group_name> <user_name>`<br>

Create a demo directory for testing (e.g. `dev-project`)

- Change group ownership of the directory <br>
Command : `sudo chgrp <group_name> <dir_name>`

- Set directory permissions (read/write/execute for owner & group)<br>
Command : `sudo chmod 775 <dir_name>`

Test user enable for read, write and execute operation

## I learned :
how root user and other users are different to each others
know about which can access group assign files
permissions

```

