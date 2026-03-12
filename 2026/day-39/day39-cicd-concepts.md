## Task 1
Real Scenario: Manual Deployment Process

1. Developer pushes the code  
The developer pushes the latest code to the repository (for example GitHub).  
2. Build the application  
The DevOps engineer or developer builds the application to create a deployable artifact.  
The engineer runs a build command such as:  
- mvn package (for Java/Maven)  
- npm run build (for Node.js)   
Example: `mvn clean package` or `npm run build`
3. Test the build  
Run the application locally or in a staging environment to make sure everything works correctly.  
4. Login to the production server  
generally devleloper connect with production server with SSH  
Example: `ssh user@production-server-ip`  
5. Backup the currently running application  
Before replacing the application, a backup is created in case rollback is needed.  
Example:  
Example: `cp app.jar app-backup.jar`  
6. Upload the new build to the server  
From the local machine:  
Example: `scp app.jar user@production-server:/var/www/app/`  
7. Stop the currently running application  
Example: `sudo systemctl stop myapp`  
8. Replace the old version  
Move the new build file to the application directory.  
9. Start the application again  
Example: `sudo systemctl start myapp`
10. Check logs and verify deployment  
Example: `journalctl -u myapp -f`  

Problems with Manual Deployment:  
Manual deployment has several problems. It is time-consuming because steps like testing, building, and releasing are done manually. There is also a higher chance of human errors. If the new version fails, rolling back to the previous version is difficult and slow. 
Therefore, we use automation tools to deploy applications. Automating the process of building, testing, and deploying an application is called CI/CD, which helps make deployments faster, more reliable, and less error-prone.  

## Task 2
CI vs CD  

- Continuous Integration — what happens, how often, what it catches
- What happens:
In Continues Integration, devloper regularly merge their code to the shared repository such as github. Every time code is pushed, an automated pipeline runs to build the application and execute automated tests.  
- how often:
CI runs every time a developer pushes code or create pulll requests, sometimes multiple time in a day.
- what it catches:
CI helps detect build failures, integration issues and bug earlys before the code reaches production. It ensures that new code changes do not break the existing application.

- Continuous Delivery — how it's different from CI, what "delivery" means
Continues Delivery is the next step after Continues Integration. After the code is built and tested automatically, it is prepared and kept ready for deployment to production.
