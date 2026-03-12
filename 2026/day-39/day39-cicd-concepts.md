## Task 1
Real Scenario: Manual Deployment Process

1. Developer pushes the code  
The developer pushes the latest code to the repository (for example GitHub).  
2. Build the application  
The DevOps engineer or developer builds the application to create a deployable artifact.  
The engineer runs a build command such as:  
- mvn package (for Java/Maven)
- npm run build (for Node.js)
Example: `mvn clean package` or `npm run build` <br>
3.Test the build
Run the application locally or in a staging environment to make sure everything works correctly.
4.Login to the production server
generally devleloper connect with production server with SSH
`ssh user@production-server-ip`
5.Backup the currently running application
Before replacing the application, a backup is created in case rollback is needed.
Example:
`cp app.jar app-backup.jar`
6.Upload the new build to the server
From the local machine:
`scp app.jar user@production-server:/var/www/app/`
7.Stop the currently running application
Example:
`sudo systemctl stop myapp`
8.Replace the old version
Move the new build file to the application directory.
9.Start the application again
`sudo systemctl start myapp`
10.Check logs and verify deployment
journalctl -u myapp -f
