# Git & GitHub Commands Cheatsheet
```
# Git Setup & Configure

# Varify git is installed.
Command : git --version

# Update and Install git (Linux)
Command : sudo apt-get update -y
Command : sudo apt install git -y

# Configure git  
Command : git config --global user.name "<user-name>"
Command : git config --global user.email "<email>"

# Initialize a git repository  
Command: git init

# Check repository status
Command: git status

# Track file and commit
Command : git add <file_name>
Command : git commit -m  "commit message"

# View commit history (HEAD)
Command : git log --oneline

# Branching
# See current branch
Command : git branch

# Create a new branch
Command : git branch <branch_name>

- Switch and Create new branch with existing working tree 
Command : git checkout -b <branch_name>

- Switch one to another branch
Command : git switch <brach_name>

- Delete a branch
Command : git branch -D <branch_name>

# Merge 
# Merge the specified branch into the current branch.(fast-forward merge) 
Command : git merge <branch>

# Merge commit (when branches have diverged)
Command: git merge --no-ff <branch>

# Squash merge (combine all commits into one)
Command: git merge --squash <branch>

# Rebase
# Move current branch commits on top of another branch
Command: git rebase <branch>

# Continue the rebase after resolving conflicts.
Command: git rebase --continue

# Cherry-pick
# Apply a specific commit from another branch onto your current branch.
Command: git cherry-pick <commit_id>

# Reset
# Undo commit but keep changes staged
Command: git reset --soft <commit>

# Undo commit and unstage changes (default mode)
Command: git reset --mixed <commit>

# Undo commit and discard all changes
Command: git reset --hard <commit>

# Revert
# Create a new commit that undoes a specified commit
Command: git revert <commit>
```
