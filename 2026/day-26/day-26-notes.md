# Task 1: Install and Authenticate

- Install the GitHub CLI on your machine
  Command : sudo apt update
            sudo apt install gh -y  
- Authenticate with your GitHub account
  Command : gh auth login 

During the process - we have to select
1) Github type (Github.com or Github Enterprise)
2) preferred protocol for Git operations (HTTPS or SSH)
3) Authentication Method (Web browser or Token)
 
- Verify which account is active
  Command : gh --version

Q) What authentication methods does `gh` support?
ANS : gh supoorts to authentication methods 
   1. Via Web browser  2.  Via a personal Access Token 

# Task 2 : Working with Repositories

- Create a new GitHub repo directly from the terminal — make it public with a README
Command : gh repo create

During the process we have to select:
- Create a new repository on GitHub from scratch
- Repository name demo
- Description
- Visibility Public
- Would you like to add a README file? Yes
- Would you like to add a .gitignore? No
- Would you like to add a license? No
- 


  
Q1) What authentication methods does gh support?
ANS: gh (GitHub CLI) supports multiple secure authentication methods for GitHub
- Web-based Login
  gh auth login
- Personal Access Token (PAT)
  gh auth login --with-token

Q2) What merge methods does gh pr merge support?

Q3) How would you review someone else's PR using gh?
