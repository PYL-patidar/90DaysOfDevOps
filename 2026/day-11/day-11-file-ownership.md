## Day 11 Challenege

- Files and directories Created
- Ownershop changes

## Commands Used for Ownership Management 

- Check file owner and group <br>
  Command : `ls -l`

- Change ownership of a user <br>
  Command : `sudo chown <user> <file_name>`
  
- Change ownership of a group <br>
  Command : `sudo chgrp <group> <file_name>`
  
- Change both user and group ownership <br>
  Command : `sudo chown <user>:<group> <file_name>`
  
- Change ownership recursively (for directories) <br>
  Commands : `sudo chown -R <user>:<group> <dir_name>`
  
- Verify recursive ownership changes <br>
  Command : `ls -lR <dir_name>`


## I learned :
it's clear to me about difference between chown and chgrp 
