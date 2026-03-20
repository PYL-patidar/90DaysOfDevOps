##  Task 1:
Q) What is reusable workflow?
-> Reusable workflows are a feature in github action that let you define a workflow once and reuse it across accross multiple repositories  
or workflows.
Instead of writing the same CICD logic again and again, we create one workflow file and call it whenever needed.

Q) What is the workflow_call trigger?
-> The workflow_call trigger in github action is what make a workflow reusable.  
workflow_call allows one workflow to be called by another workflow. 

Q) How is calling a reusable workflow different from using a regular action (uses:)?
we can call reusable workflow to the other workflows `uses: <path of the workflow call>` so that  
Q) Where must a reusable workflow file live?
-> The reusable workflow use the uses: and the path for the workflow so that is can be access.

## Task 2: Create Your First Reusable Workflow
