# Task 1: What is Docker?

Q.1) What is container and why do we need them?  <br>
ANS: A container is a standard unit of software that packages up code and all its dependencies so the application runs quickly
and reliably from one computing environment to another.

Q2) Containers vs Virtual Machines — what's the real difference? <br>
ANS: <br>
Container: <br>
- Containers virtualize the OS <br>
- Shared environment use <br>
- It is light wieghted <br>
- use host OS <br>
  
Virtual Machine: <br>
- VMs virtualize hardware <br>
- Seperate environment use <br>
- It is a heavy wieghted process <br>
- required seperate OS <br>

Q3) What is the Docker architecture? (daemon, client, images, containers, registry) <br>
docker client <br>
docker engine <br>
docker daemon <br>
docker registry <br>

Developer <br>
   │ <br>
   │ docker command <br>
   ▼<br>
Docker Client<br>
   │<br>
   ▼<br>
Docker Daemon<br>
   │<br>
   ├── Builds Images<br>
   ├── Runs Containers<br>
   │<br>
   ▼<br>
Docker Registry (pull/push images)<br>

## Docker Client: 
The Docker Client is the tool that users interact with.
It is the command-line interface (CLI) where you run Docker commands.

## Docker Daemon:
The Docker Daemon (dockerd) is the background service that runs on the Docker host.
It is responsible for:
- Building Docker images
- Running containers
- Managing networks
- Managing volumes
- Communicating with registries

The daemon listens for requests from the Docker client and executes them

## Docker Images
A Docker image is a read-only template used to create containers.
It contains:
- Application code
- Libraries
- Dependencies
- Runtime
- Configuration
Example images stored in registries: ubuntu, nginx

## Docker Containers
A container is a running instance of a Docker image.
It includes:
- Application
- Environment
- Dependencies

## Docker Registry
A Docker registry is a place where Docker images are stored and shared.
The most commonly used registry is Docker Hub.<br>
Docker Registry (pull/push images)

# Task 2: Install Docker

- Install Docker on your machine <br>
  Command : `sudo apt-get && apt-get install docker.io` <br> 
- Verify the installation<br>
  Command : `docker --version`<br>
- Run the hello-world container<br>
  Command : `docker run hello-world`<br>
Output:<br>
The Output gives an overview of how the Docker client communicates with the Docker daemon. The daemon then pulls the image from the registry and creates a new container from that image.

# Task 3 : 

- Run an Nginx container and access it in your browser<br>
  Command : `docker run -d -p 80:80 nginx`<br>
Open port 80 and connect container port with host port and with -d it will run in detach mode that meand container will run in background.<br>

- Run an Ubuntu container in interactive mode — explore it like a mini Linux machine<br>
  Command : `docker run -d -it ubuntu`
  - It will run as an interative mode<br>
  - Go to inside the container<br>
    Command used : `docker exec -it <container_id> bash`
- List all running containers<br>
  Command : `docker ps`
- List all containers (including stopped ones)<br>
  Command : `docker ps -a`
- Stop and remove a container<br>
  Command : `docker stop <container_id> && docker rm <container_id>`
  
# Task 4 :

- Run a container in detached mode — what's different?<br>
ANS: Running a container in detached mode in Docker means the container runs in the background instead of occupying the terminal. This allows us to use the terminal for other commands without interruption.<br>
- Give a container a custom name & Map a port from the container to your host<br>
  Command : `docker run --name <custom_name> -d -p 80:80 nginx `
- Check logs of a running container <br>
  Command : `docker logs <container_id>`
- Run a command inside a running container<br>
  Command : `docker exec <container_id>`
