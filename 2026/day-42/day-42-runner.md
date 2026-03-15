## Github-Action Runners:
A runner is the machine that executes the jobs and steps of a workflow in GitHub Actions.  
Types of Runners  
There are two types:
  
GitHub-hosted runners → managed by GitHub  
Self-hosted runners → managed by you  

- GitHub-hosted runners:
A GitHub-hosted runner is a virtual machine (VM) provided by GitHub that runs your workflow jobs in GitHub Actions.  
we do not need to create the server. GitHub automatically creates the machine, runs the job, and deletes it after the job finishes.  
  
we can choose different operating systems:  
  - `runs-on: ubuntu-latest`
  - `runs-on: windows-latest`
  - `runs-on: macos-latest`

- Pre-installed softwares on runner
If tools are already installed, our workflow doesn’t need to install them every time.  
Pre-installed software on ubuntu-latest runners makes workflows faster, easier to write, and more reliable because most
required tools are already available.  
  
Q) Why are labels useful when you have multiple self-hosted runners?
Labels are useful because they help GitHub identify and send jobs to the correct self-hosted runner when multiple runners are available.  

## GitHub-Hosted Runner vs	Self-Hosted Runner
Feature  
Who manages it?  
- Managed by GitHub  
- Managed by you / your organization
Cost
- Free with usage limits (or paid minutes for heavy usage)
- You pay for your own server / infrastructure
Pre-installed tools  
- Many tools already installed (Python, Node, Docker, Git, etc.)
- You install and manage all tools yourself  
Good for
- Quick setup, simple CI/CD pipelines, small to medium projects  
- Custom environments, private infrastructure, special hardware (GPU, large memory)
Security concern
- Code runs on GitHub’s cloud machines
- Full control but you must manage security  
