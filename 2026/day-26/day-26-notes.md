# Task 1: Install and Authenticate

- Install the GitHub CLI on your machine <br>
  Command : sudo apt update && sudo apt install gh -y  <br> 
- Authenticate with your GitHub account <br>
  Command : gh auth login 

During the process - we have to select <br>
1) Github type (Github.com or Github Enterprise)  <br>
2) preferred protocol for Git operations (HTTPS or SSH) <br>
3) Authentication Method (Web browser or Token) <br>
 
- Verify which account is active <br>
  Command : gh --version  <br>

Q) What authentication methods does `gh` support?   <br>
ANS : gh supoorts to authentication methods  <br>
   1. Via Web browser  2.  Via a personal Access Token  <br>

# Task 2 : Working with Repositories

- Create a new GitHub repo directly from the terminal — make it public with a README  <br>
Command : gh repo create  <br>
1) During the process we have to select: <br>
2) Create a new repository on GitHub from scratch <br>
3) Repository name demo  <br>
4) Description  <br>
5) Visibility Public  <br>
6) Would you like to add a README file? Yes  <br>
7) Would you like to add a .gitignore? No   <br>
8) Would you like to add a license? No  <br> 

- Clone a repo using gh instead of git clone
  Commnad : gh repo clone <repo_name>

- View details of one of your repos from the terminal
- To view information about the current repository:
  Command : gh repo view

- List all your repositories
  Command : gh repo list

- Open a repo in your browser directly from the terminal
  Command : gh repo view --web

- Delete the test repo you created
  Command : gh repo delete <repo_name>

# Task 3  : Issues
- Create an issue on one of your repos from the terminal — give it a title, body, and a label
Command : gh issue create

- List all open issues on that repo
Command : gh issue list

- View a specific issue by its number
Command : gh issue view 1

- Close an issue from the terminal
Command : gh issue close 1

Q)  How could you use gh issue in a script or automation?
ANS : 

# Task 4 : Pull Request

- Create a branch, make a change, push it, and create a pull request entirely from the terminal
Command : gh pr create

- List all open PRs on a repo
Command : gh pr list

- View a specific pull request:
Command : gh pr view 5  

- View a pull request with its comments and status checks:
Command : gh pr view 5 --comments  

- Checkout a pull request locally for testing:
Commnad : gh pr checkout 5

- Merge your PR from the terminal
Command : gh pr merge 5

Q) What merge methods does gh pr merge support?
Q) How would you review someone else's PR using gh?

  
Q1) What authentication methods does gh support?
ANS: gh (GitHub CLI) supports multiple secure authentication methods for GitHub
- Web-based Login
  gh auth login
- Personal Access Token (PAT)
  gh auth login --with-token

Q2) What merge methods does gh pr merge support?

Q3) How would you review someone else's PR using gh?
