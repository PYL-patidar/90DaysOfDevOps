# Task 1: Install and Authenticate

- Install the GitHub CLI on your machine <br>
  Command : `sudo apt update ` && `sudo apt install gh -y ` <br> 
- Authenticate with your GitHub account <br>
  Command : `gh auth login`

During the process - we have to select <br>
1) Github type (Github.com or Github Enterprise)  <br>
2) preferred protocol for Git operations (HTTPS or SSH) <br>
3) Authentication Method (Web browser or Token) <br>
 
- Verify which account is active <br>
  Command : `gh --version`  <br>

Q) What authentication methods does `gh` support? <br>
ANS : gh (GitHub CLI) supports multiple secure authentication methods for GitHub <br> 
- Web-based Login <br> 
  `gh auth login`
- Personal Access Token (PAT) <br> 
  `gh auth login --with-token`

# Task 2 : Working with Repositories

- Create a new GitHub repo directly from the terminal — make it public with a README  <br>
Command : `gh repo create`  <br>

During the process we have to select: <br>
1) Create a new repository on GitHub from scratch <br>
2) Repository name demo  <br>
3) Description  <br>
4) Visibility Public  <br>
5) Would you like to add a README file? Yes  <br>
6) Would you like to add a .gitignore? No   <br>
7) Would you like to add a license? No  <br> 

- Clone a repo using `gh` instead of git clone<br> 
  Commnad : `gh repo clone` <repo_name>

- To view information about the current repository: <br> 
  Command : `gh repo view`

- List all your repositories <br> 
  Command : `gh repo list`

- Open a repo in your browser directly from the terminal <br> 
  Command : `gh repo view --web`

- Delete the test repo you created <br> 
  Command : `gh repo delete <repo_name>`

# Task 3  : Issues
- Create an issue on one of your repos from the terminal — give it a title, body, and a label <br> 
Command : `gh issue create`

- List all open issues on that repo <br> 
Command : `gh issue list`

- View a specific issue by its number <br> 
Command : `gh issue view 1`

- Close an issue from the terminal <br> 
Command : `gh issue close 1`

Q)  How could you use gh issue in a script or automation? <br> 
ANS : 

# Task 4 : Pull Request
 
- Create a branch, make a change, push it, and create a pull request entirely from the terminal <br> 
Command : `gh pr create`

- List all open PRs on a repo <br> 
Command : `gh pr list`

- View a specific pull request: <br> 
Command : `gh pr view 5`  

- View a pull request with its comments and status checks: <br> 
Command : `gh pr view 5 --comments`  

- Checkout a pull request locally for testing: <br> 
Commnad : `gh pr checkout 5`

- Merge your PR from the terminal <br> 
Command : `gh pr merge 5`

Q) What merge methods does gh pr merge support? <br> 
ANS : gh pr merge supports three merge methods:
- Merge Commit
`gh pr merge --merge`
- Squash Merge
`gh pr merge --squash`
- Rebase Merge
`gh pr merge --rebase`

Q) How would you review someone else's PR using gh? <br> 
We can view, checkout, and submit reviews for pull requests using `gh pr view`, `gh pr checkout`, and `gh pr review`.

