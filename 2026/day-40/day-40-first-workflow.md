## Overview of GitHub Actions:  
- GitHub Actions is a tool used to automate CI/CD pipelines.
- It helps automate tasks like building, testing, and deploying applications.  
- To create a pipeline in GitHub Actions, we write a workflow.  
- A workflow is defined using a YAML (.yml) file inside the .github/workflows folder.  
- The workflow runs automatically when it is triggered by events such as:  push, pull_request, schedule, workflow_dispatch

## Pipeline Anotomy  
`on`: tell when the workflow should starts.  
- it defines the event that triggers the workflow  
- Example of triggers:  
  - `push`-> when code is pushed to the repository.  
  - `pull_request`-> when a pull request is created and updated.    
  - `workflow_dispatch`-> when we manually run the workflow.  
 
`jobs`: defines what major tasks the workflow will perform.  
- A job is a group of steps that runs on a runner(machine).  
- A workflow can have one or multiple jobs.  

`steps`: defines individual action inside a job.  
- Steps are the small tasks executed one by one to complete the job.
- Examples:  checkout code, install dependencies, run tests, build the project
