<h2>Ways to Create text files </h2> <br>
1. By touch command <br>
2. By vim text editor <br>
<br>

<h2>Write some lines</h2> <br>
echo "Line 1" > notes.txt <br>
echo "Line 2" >> notes.txt <br>
echo "Line 3" | tee -a notes.txt <br>
<br>

<h2>Display data of file</h2> <br>
cat notes.txt <br>
head -n 2 notes.txt <br>
tail -n 2 notes.txt <br>
