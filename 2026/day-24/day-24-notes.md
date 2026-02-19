```
Q1) Observe the merge — did Git do a fast-forward merge or a merge commit?
ANS : By default git do fast-forwarding merge when possible, and if changes are present in the both branch and they are diversed, in that situation merge commit do.

Q2) What is fast-forward merge
ANS: fast-forward merge means add changes to other branch to main(target branch) without any diversion.

Q3) When does Git create a merge commit instead?
ANS : Git create merge commit when the source and target branches are diverted. then a new commit create at mergeing time called merge commit.

Q4) What is a merge conflict?
ANS: When some changes are added at the same line into both branches so the they are conflict when we merge them.

Q5) What does rebase actually do to your commits?
ANS: rebase combine the changes of both branches and rewite the commit history of the target branch into a straigh line.

Q6) How is the history different from a merge?
ANS: merge commit history contains a complete, accurate history of when branches were merged. where is rebase commit history holds a transplants commits, creating new commits with different IDs, resulting in a cleaner, linear, and easier-to-read history.

Q7) Why should you never rebase commits that have been pushed and shared with others?
ANS: Rebasing commits that have been pushed and shared with others violates the "Golden Rule of Rebase," which states: never rewrite public or shared history.
When you rebase, Git abandons the original commits and creates new ones with different SHA-1 hashes, effectively rewriting the branch's history. If other developers have already pulled the original commits and based their own work on them, your rewritten history creates a "diverged history" that is extremely difficult to reconcile, causing major issues for your team.

Q8) When would you use rebase vs merge?
ANS: merge should be used when we have to add the changes into the main branch because it immediatly integrate the changes. whereas rebase used in that case where we have to maintain a clean, linear project history on private, local feature branches by moving your changes to the tip of the main branch, avoiding unnecessary merge commits.








```
