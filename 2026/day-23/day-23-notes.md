
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

Q5) What is difference between `git switch` and `git checkout` ?
ANS: Switch only for switching one branch to another, whereas checkout switch branch along with resote the working tree files. 

Q6) what is the difference between `origin` and `upstream`?
ANS: `upstream` is the original remote repository owned by someone else, which we fork into our own profile. We work on our forked repository (origin), and whenever new changes are made in the original repository(upstream), we use upstream to sync and update our fork.

Q7) git pull Vs git fetch
ANS: The main difference is that the `git fetch` only downloads the changes form the remote repository to local reposiroty, and not add the changes to local files, while `git pull` downloads the changes and as well as then immediately integrates them into current working branch.
