```
Q1) did Git do a fat-forwarding merge or a merge commit?
ANS: By default, Git performs a fast-forward merge when possible, and a merge commit (specifically, a three-way recursive merge) if the branches have diverged. 

Q2) what is fast-forwarding merge?
ANS: fast-forwarding merge means adding changes to target branch
A fast-forward merge moves the reference for the destination branch forward to the most recent commit of the source branch.

Q3) When does Git create a merge commit instead?
ANS: git crate mearge commit when we have the condition to diverse of changes to diferent branch.
Git creates a merge commit when the branches being merged have diverged, meaning there are unique new commits on both branches since their common ancestor.
 This is known as a three-way merge

Q4) What is a merge conflict? (try creating one intentionally by editing the same line in both branches)
ANS: merge create conflict even when change are made on the both branches and when we go for merge it become conflict.

Q5)What does rebase actually do to your commits?
ANS: To combine changes of two branchesand rewrite commit history into a staight line

Q6) How is the history different from a merge?







```
