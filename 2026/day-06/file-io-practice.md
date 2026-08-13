## Ways to Create text files

1. By touch command
2. By vim text editor

## Write some text 
echo "Line 1" > notes.txt  
echo "Line 2" >> notes.txt  
echo "Line 3" | tee -a notes.txt 

Open text editor `vim <file-name>`
Then,  
change to the insert mode  
write the text  
For save  
click `Esc`,   
`:wq`  
click enter  

## Display data of file  

cat notes.txt  
head -n 2 notes.txt  
tail -n 2 notes.txt  
