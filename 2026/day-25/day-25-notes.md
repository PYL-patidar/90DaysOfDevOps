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
                                 |         git reset	                  |             git revert
What it does                     |   reset the changes and preseved    |       used for undo the commit histry not  
                                 |   into staging(index)               |       and add alter commit not add actual change   
Removes commit from history?     |   yes                               |       not remove even add new commit
Safe for shared/pushed branches? |   not safe not shared braches       |       safe with shared/pushed branches
When to use	                     |   if someting reset in local        |       when undo some changes on shared  
                                 |   that are not pushed on public     |       repository  
---

## Task 4
Branching strategies

Git branching strategies are sets of rules and guidelines for how teams create, manage, and merge branches to ensure smooth collaboration and organized code development. The most common strategies are GitFlow, GitHub Flow, GitLab Flow, and Trunk-Based Development, each suited to different project needs and team sizes.

# GitFlow 

GitFlow enables parallel development, allowing developers to work separately on feature branches. A feature branch is created
 from a master branch, and after completion of changes the feature branch is merged with the master branch.

The types of branches that are present in GitFlow for different purposes:

Master: Used for product release
Develop: Used for ongoing development
Feature Branches: Created from the develop branch to work on specific features.
Release Branches: Created from the develop branch to prepare for production releases and bug fixes
Hotfix Branches: Created from the master branch to address urgent issues directly in production. It helps in addressing discovered bugs smoothly, allowing developers to continue their work on the develop branch while the issue is resolved.

# Pros
Very well-structured workflow
Ideal for large teams
Clear release & hotfix management
Stable production branch

# Cons
Complex to manage
Slower delivery
Overkill for small projects
Many long-living branches → more merge conflicts

## GithubFLow

GitHub Flow is a lightweight branching strategy that keeps the main branch always deployable and supports fast, continuous development.

Uses only short-lived feature branches created from and merged back into the main branch.
No separate release branches, making the workflow simple and easy to manage.
Ideal for fast releases with continuous integration and delivery.
The types of branches that are present in GitHub Flow are:

Master: The GitHub Flow starts with the master branch, which contains the most recent stable code ready for release.
Feature: Developers create feature branches from the main branch to work on features or fixes, then merge them back after completion, resolving any conflicts before finalizing the merge.

#Pros
Simple and lightweight
Fast development & deployment
Best for CI/CD
Easy for beginners

#Cons
Not ideal for large enterprise releases
Limited release management
Less suitable when multiple versions must be supported

##Trunk Based Development

Trunk-Based Development is a branching strategy where all developers work directly on a single main branch, keeping it always in a release-ready state.

Development happens on one primary branch (usually main or master) without long-lived branches.
Feature flags are used to hide incomplete features until they are ready.
Encourages small, frequent commits to reduce merge conflicts.
Supports continuous integration and continuous delivery (CI/CD).
Best suited for small teams or projects that prefer a simple and fast workflow.

#Pros
Good environment control
Supports deployment workflows
Cleaner than Git Flow

#Cons
Slightly complex
Requires strict discipline

```
