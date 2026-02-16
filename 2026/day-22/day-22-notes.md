```
Scenario Based question :
Q1) What is the difference between git add and git commit?
ANS: - git add command used for send file from untracking to staging area
     - git commit is used for move a file from staging area to tracking area

Q2) What does the staging area do? Why doesn't Git just commit directly?
ANS: The staging area is a temporary area where we prepare and review changes before permanently saving them in a commit.
Git doesn’t commit directly because Without a staging area, every small or incomplete change would be forced into commits, which would create messy history and confusion.

Q3) What information does git log show you?
ANS: git log shows complete git commit history, including the latest commit pointed by 'HEAD', along with commit ID, author, date, and commit message.

Q4) What is the .git/ folder and what happens if you delete it?
ANS: The .git/ folder is the core Git repository that tracks the complete history of files. If we delete it, the directory becomes a normal folder and all Git tracking and history are lost.

Q5) What is the difference between a working directory, staging area, and repository?
ANS: Files are created and modified in the working directory. When we initialize a folder using Git, it becomes a repository. Initially, files are untracked, and we move them to the
staging area using git add to prepare them for commit. After committing, they are stored permanently in the repository.

```



