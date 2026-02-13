## Task 1
- Crete Three Users with home directory and password

- User 1 <br>
Command : `sudo useradd -m barlin` <br>
Command : `sudo passwd barlin` <br>
Output : Type new passwd and then retype

- User 2 <br>
Command : `sudo useradd -m tokyo` <br>
Command : `sudo passwd tokyo` <br>
Output : Type new passwd and then retype 

- User 3 <br>
Command : `sudo useradd -m professor` <br>
Command : `sudo passwd professor `<br>
Output : Type new passwd and then retype

- Varify : `cat /etc/passwd` (see User info) <br>
- Varify : `sudo cat /etc/shadow` (password) <br>

## Task 2
- Create Groups

- Group 1 : `sudo groupadd devlopers`
- Group 2 : `sudo groupadd admins`
- Varify : `cat /etc/group`

## Task 3 
- Assign users to groups <br>

tokyo --> devlopers <br>
Command : `sudo usermod -aG devlopers tokyo` <br>

barlin --> devloper + admins <br>
Command : `sudo useradd -aG devloper,admins barlin` <br>

professor --> admins
Command : `sudo useradd -aG admins professor`
