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

Q9) What does squash merging do?
ANS: squash commit merge the multiple commits into one singe commit.

Q10) When would you use squash merge vs regular merge?
ANS: Squash merge combines all feature branch commits into one, creating a clean, single-commit history on the main branch, ideal for small, self-contained features. A regular merge preserves the entire history, including every granular commit, which is better for tracking long-running, complex branches.

Q11) What is the trade-off of squashing?
ANS: Squashing means combining multiple commits into a single commit before merging. It helps keep the commit history clean — but it comes with some trade-offs:

Advantages
Clean & readable history – fewer commits, easier to understand.
Simplifies code review – reviewers see one meaningful commit instead of many small ones.
Removes noisy commits – like fix typo, oops, WIP, etc.

Trade-offs / Disadvantages
Loss of detailed history – individual commit messages and step-by-step progress are lost.
Harder debugging – tools like git bisect become less effective because intermediate commits are gone.
Less traceability – you can’t easily see who changed what and why at each small step.
Collaboration issues (if done late) – squashing shared branches can rewrite history and cause conflicts.

Q12) What is the difference between git stash pop and git stash apply?
ANS: git stash is used to temporarily save our umcommited changes and clean working directory without commited them. and after some time when we want to work on we can pop them and then commit them. and if we apply directly changes they remains in the stash list and the unwamtly filles out thier. 

Q13) When would you use stash in a real-world workflow?
ANS : git stash is used to temporarily save uncommitted changes (both staged and unstaged) to return the working directory to a clean state.

Q14) What does cherry-pick do?
ANS: cherry-pich command used for picking a specific command to commit in another branch, without merging the entire commits of branch.

Q15) When would you use cherry-pick in a real project?
ANS: suppose we have a feature branch and in this 3 new feature are added. and their 2nd feature is the best and want to add this perticular feature into the main branch in that case we use chaerry-pick to commit that one special commit rahter than merge entire commit history.

Q16) What can go wrong with cherry-picking?
ANS: Cherry-picking can cause conflicts, duplicate commits, broken dependencies, and confusing history if not used carefully.



```
