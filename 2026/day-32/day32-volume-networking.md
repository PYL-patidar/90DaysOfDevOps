## Docker Volume
When we run a database container and store data inside it, the data will be lost if the container is removed.
This happens because containers are ephemeral. To persist the data, we should use Docker volumes.

- Difference Between a Named Volume and a Bind Mount <br>
Both named volumes and bind mounts are used in Docker to persist data outside the container, but they work in different ways. <br>

- Named Volume
A named volume is a storage area that is created and managed by Docker.
 - Docker decides where the data is stored on the host.
 - It is easier to manage and more portable.
 - Mostly used in production environments.
 -  Example
`docker run -d \
--name mysql-container \
-v mysql-data:/var/lib/mysql \
mysql`

- Bind Mount
A bind mount connects a specific directory from the host machine to a container directory.
  - The user chooses the host path.
  - The container directly accesses files from the host system.
  - Mostly used in development environments.
  - Example
`docker run -d \
-v /home/user/project:/app \
nginx`
