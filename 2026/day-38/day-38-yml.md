 ## Understand YAML syntax and rules
Q) What are the two ways to write a list in YAML?<br>
Each item starts with a dash (-) on a new line. <br>
fruits:
  - apple
  - banana
  - mango
    
All items are written in a single line inside square brackets.<br>
fruits: [apple, banana, mango] <br>

Q) When would you use | vs > ? <br>
in YML `|` and `>`both are used for write multi line string, but they behave differently.  <br>
- `|` Literal block style: <br>
It preserves line break exactly as written
- `>` (Folded Style) <br>
It converts line breaks into spaces (lines are merged). <br>
