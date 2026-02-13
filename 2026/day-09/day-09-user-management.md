## Task 1
- Crete three users with home directory and password

- User 1 : Create User1 with direcory and password <br>
Command : sudo useradd -m barlin <br>
Command : sudo passwd barlin <br>
Output : Type new passwd and then retype

- User 2 : Create user2 with directory and password <br>
Command : sudo useradd -m tokyo <br>
Command : sudo passwd tokyo <br>
Output : Type new passwd and then retype 

- User 3 : Create user3 with directory and password <br>
Command :  sudo useradd -m professor <br>
Command : sudo passwd professor <br>
Output : Type new passwd and then retype

- Varify : cat /etc/passwd (User info) <br>
- Varify : sudo cat /etc/shadow (password) <br>

## Task 2
- Create Groups

- Group 1 : sudo groupadd devlopers
- Group 2 : sudo groupadd admins
- Varify : cat /etc/group

## Task 3 
- Assign users to groups
- `tokyo --> devlopers`
Commands : 
