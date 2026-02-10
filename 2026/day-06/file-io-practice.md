<h2>Ways to Create text files </h2> <br>
1. By touch command
2. By vim text editor

<h2>Write some lines</h2> <br>
echo "Line 1" > notes.txt <br>
echo "Line 2" >> notes.txt <br>
echo "Line 3" | tee -a notes.txt <br>
<br>

<h3>Display data of file</h3><br>
cat notes.txt
head -n 2 notes.txt
tail -n 2 notes.txt
