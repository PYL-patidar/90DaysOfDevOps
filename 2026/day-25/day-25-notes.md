```
# Task 1
## What is the difference between --soft, --mixed, and --hard?
Q1) Use git reset --soft to go back one commit — what happens to the changes?
ANS: The git reset --soft command is a safe way to undo commits that have not been shared with others, while preserving all the associated file changes
in your staging area (index).

Q2) Use git reset --mixed to go back one commit — what happens now?
ANS: The git reset --mixed command is used to undo commits and unstage changes, while preserving the actual file modifications in your
working directory. It is the default mode for git reset, so running git reset without any flags has the same effect. 

Q3) Use git reset --hard to go back one commit — what happens this time?
ANS: The git reset --hard command is a powerful and potentially destructive operation that resets the current branch, staging area (index),
and working directory to match a specific commit, permanently discarding all uncommitted changes.

## Which one is destructive and why?
## When would you use each one?

## Should you ever use git reset on commits that are already pushed?
ANS : We should almost never use git reset on commits that have already been pushed to a shared or public branch. Using git reset
 in this scenario rewrites the project history, which can cause significant problems, conflicts, and even data loss for other
 team members who have already pulled those commits.

# Task 2
Q1) How is git revert different from git reset?
git revert and git reset are both used to undo changes, but their core difference lies in how they handle project history.
git revert is a safe, non-destructive operation that creates new history, while git reset modifies or rewrites existing history.
 
Q2) Why is revert considered safer than reset for shared branches?
git revert is safer for shared branches because it adds a new, inverse commit rather than rewriting history,
 preventing synchronization conflicts for other users. Unlike git reset, which destroys commit history and requires force-pushing,
 revert preserves the original, problematic commit, making it easy to identify, undo, or correct without disrupting team workflows.

Q3) When would you use revert vs reset?
ANS: Use revert if you need to undo a bug fix that was already pushed to the team.
Use reset if you committed something wrong locally and want to fix it before pushing.

## Task 3
Create a comparison in your notes:
---
                                       git reset	                            git revert
What it does |                     reset the changes and preseved |         used for undo the commit histry not  
                                   into staging(index)            |         and add alter commit not add actual change   
Removes commit from history? |      yes                           |         not remove even add new commit
Safe for shared/pushed branches? |  not safe not shared braches   |         safe with shared/pushed branches
When to use	|                       if someting reset in local    |         when undo some changes on shared  
                                   that are not pushed on public  |         repository  
---

```
