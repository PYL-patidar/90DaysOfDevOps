## Docker Volume
When we run a database container and store data inside it, the data will be lost if the container is removed.
This happens because containers are ephemeral. To persist the data, we should use Docker volumes.

Q) Difference Between a Named Volume and a Bind Mount ? <br>
Both named volumes and bind mounts are used in Docker to persist data outside the container, but they work in different ways. <br>

- Named Volume <br>
A named volume is a storage area that is created and managed by Docker.
  - Docker decides where the data is stored on the host.
  - It is easier to manage and more portable.
  - Mostly used in production environments.
  -  Example: `docker run -d --name mysql-container -v mysql-data:/var/lib/mysql mysql`

- Bind Mount <br>
A bind mount connects a specific directory from the host machine to a container directory. <br>
  - The user chooses the host path.
  - The container directly accesses files from the host system.
  - Mostly used in development environments.
  - Example: `docker run -d -v /home/user/project:/app nginx`

- Why custom networking allows name-based communication but the default bridge doesn't?
- Default bridge network
  - In Docker the default bridge network does not provide automatic DNS resolution between containers.
  - Because of this, containers cannot resolve each other's names.
  - Communication is possible only using IP addresses.
 
- User-defined (custom) bridge network
  - When we create a custom network:
  - Docker automatically enables an internal DNS server for that network.
Because of this:
  - Containers can discover each other by container name
  - Docker maps container name → container IP
