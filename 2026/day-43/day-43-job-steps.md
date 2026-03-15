## Job Outputs
In GitHub Actions, jobs run independently in different runners.  
Because of this:  
One job cannot directly access variables from another job.  
If one job generates a value, the next job needs a way to receive it.  
Job Outputs solve this problem.  

Job outputs in GitHub Actions allow one job to pass dynamically generated data to another job,  
enabling coordinated execution across the CI/CD pipeline.  
syntax: `needs.<job-name>.outputs.<output-name>`  

## Notes: Why Pass Outputs Between Jobs?
Passing outputs between jobs is useful when:  
  
Share Data Between Jobs  
Example:  
- Build job creates artifact version
- Deploy job uses that same version
