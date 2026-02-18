
## Understanding Branches

Q1) What is a branch in Git?
ANS: A branch in Git is a seperate workspace where we can make changes and try new ideas without  affecting the main code.

Q2) Why do we use branches instead of commiting everything to `main`?
ANS: Because the main branch contains stable production code, and branches allow us to safely develop, test, and manage changes 
without breaking the main code.

Q3) What is `HEAD` in Git?
ANS: In Git, HEAD is a pointer that refers to the current commit (or current branch) in the commit history.

Q4) What happens to your file when you switch branches?
ANS: When we switch branches, Git updates the files to match the selected branch. If there are uncommitted changes, they move with
us only if there is no conflict; otherwise, Git asks us to commit or stash them.
