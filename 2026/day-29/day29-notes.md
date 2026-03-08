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

Developer
   │
   │ docker command
   ▼
Docker Client
   │
   ▼
Docker Daemon
   │
   ├── Builds Images
   ├── Runs Containers
   │
   ▼
Docker Registry (pull/push images)

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
The most commonly used registry is Docker Hub.
Docker Registry (pull/push images)

# Task 2: Install Docker
- Install Docker on your machine
  Command : sudo apt-get && apt-get install docker.io 
- Verify the installation
  Command : docker --version
- Run the hello-world container
  Command : docker run hello-world
Output:
The Output gives an overview of how the Docker client communicates with the Docker daemon. The daemon then pulls the image from the registry and creates a new container from that image.

# Task 3 : 
- Run an Nginx container and access it in your browser

# Task 4
