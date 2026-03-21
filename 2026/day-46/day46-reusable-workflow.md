##  Task 1:
Q) What is reusable workflow?  
-> Reusable workflows are a feature in github action that let you define a workflow once and reuse it across accross multiple repositories or workflows.  
Instead of writing the same CICD logic again and again, we create one workflow file and call it whenever needed.

Q) What is the workflow_call trigger?  
-> The workflow_call trigger in github action is what make a workflow reusable.  
workflow_call allows one workflow to be called by another workflow. 

Q) How is calling a reusable workflow different from using a regular action (uses:)?  

## Reusable Workflow vs Regular Action  
Reusable Workflow (workflow_call)    
→ Calls a complete workflow (multiple jobs)  
→ Used at the job level  
→ Example: 
`jobs: |
  call-workflow:  
    uses: org/repo/.github/workflows/deploy.yml`  
    
Regular Action (uses:)  
A regular action is a single reusable unit of work (like a function).  
→ Performs one specific task  
→ Used inside steps  
→ Can be JavaScript, Docker, or composite action  
→ Example: checkout code, build Docker image  
`steps:  
   uses: actions/checkout@v4`  
   
Q) Where must a reusable workflow file live?  
`.github/workflows/ directory of a repository`  
  
## Task 2: Create Your First Reusable Workflow

When using workflow_call in GitHub Actions (for reusable workflows), there are three main types of parameters you can pass at call time.  
- Inputs:  
Inputs are values passed to the reusable workflow to control its behavior.  
`on:
  workflow_call:
    inputs:
      app_name:
        required: true
        type: string
      environment:
        required: false
        type: string
        default: staging`  
  
Passing inputs from caller workflow  
`jobs:
  build:
    uses: ./.github/workflows/reusable.yml
    with:
      app_name: "my-app"
      environment: "prod"`  
      
- Secrets: Secrets are secure variables passed to the reusable workflow.  
Examples:  
  - API keys
  - DockerHub token
  - AWS credentials  

Example in reusable workflow  
`on:
  workflow_call:
    secrets:
      docker_token:
        required: true`  
Passing secret from caller workflow  
`jobs:
  build:
    uses: ./.github/workflows/reusable.yml
    secrets:
      docker_token: ${{ secrets.DOCKERHUB_TOKEN }}`
  
- Outputs: Outputs are values returned by the reusable workflow back to the caller workflow.  
To share results between workflows or jobs.  
Examples:
  - Build version
  - Image tag
  - Deployment URL  
Defining outputs in reusable workflow  
`on:
  workflow_call:
    outputs:
      build_version:
        description: "Generated version"
        value: ${{ jobs.build.outputs.build_version }}`  
Accessing output in caller workflow  
`run: echo "Build version: ${{ needs.build.outputs.build_version }}"`

##  Regular Actions
Regular actions are pre-built actions created by GitHub or the community that you can directly use in your workflows.  
They are usually stored in GitHub repositories.  
Example:
- `uses: actions/checkout@v4`

This action is created by GitHub and it downloads your repository code to the runner.
Regular actions save time because they already perform common DevOps tasks.

## Composite Action  
A custom action is an action created by us to automate a task that can be reused in workflows.  
Custom Action = our own reusable automation step  
  
Types of Custom Actions   
Composite Action - Combines multiple workflow steps  
Docker Action -	Runs inside a Docker container  
JavaScript Action	- Runs Node.js scripts  
## Create a Custom Action (Composite Action)  
Step 1: Create Folder  
Inside your repository create:  
  
`.github/
   actions/
      greeting-action/
         action.yml`
         
Step 2: Create action.yml  
`name: "Greeting Action"
description: "Print greeting and system information"
inputs:
  name:
    description: "Name of the person"
    required: true
runs:
  using: "composite"
  steps:
      - name: Print greeting
      shell: bash
      run: echo "Hello ${{ inputs.name }}!"
      - name: Print date
      shell: bash
      run: echo "Date: $(date)"
      - name: Print OS`
