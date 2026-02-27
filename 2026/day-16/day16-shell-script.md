## Task 1
Q1) What happens if you remove the shebang line?
ANS : When we use a shebang (#!) at the top of a script, we are specifying which interpreter or shell should be used to run the script
If we don’t include a shebang, the system will use the default shell of the current environment to execute the script. This can cause unexpected behavior or conflicts, especially if the script uses features that are not supported by the default shell.
So, to avoid compatibility issues and ensure consistent execution, it is a best practice to always include the appropriate shebang at the top of a script.

## Tast 2 
Q) Try using single quotes vs double quotes — what's the difference?
Single quotes (' ') treat everything inside as literal text — no variable expansion, no command substitution.
Double quotes (" ") allow variable expansion, command substitution, and escape sequences.

