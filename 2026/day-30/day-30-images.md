## Task1: Docker Images
Q1) Compare ubuntu vs alpine — why is one much smaller? <br>
ANS: The main reason Alpine Linux is much smaller than Ubuntu is because Alpine is designed to be minimal, while Ubuntu is a full-featured
Linux distribution.

- Minimal Packages
Ubuntu includes many default tools, libraries, and utilities.
Alpine Linux includes only the essential packages needed to run the system.
- Because of this:
  - Ubuntu image ≈ 70–80 MB
  - Alpine image ≈ 5–7 MB

Q2) Inspect an image — what information can you see?
Command : `docker image inspect <images_name>`
it shows detailed metadata and configuration information about that image

Q3) Remove an image you no longer need
Command :   `docker image prune`
Removes dangling images (images that are not tagged and not used by any container).

## Task 2: Image Layers
- Run `docker image history nginx` — what do you see?
  ANS: The command docker image history nginx in Docker shows the history of layers used to build an image.
Each Docker image is built layer by layer, and this command displays those layers.

- What are layers and why does Docker use them?
ANS:   A layer is a snapshot of changes made to the image.
Layers in Docker are read-only filesystem changes that make up a Docker image. Docker uses layers to improve build speed,
reduce storage usage, enable caching, and allow images to share common components.
Docker reuses unchanged layers.

## task 3: Container Lifecycle
one doubt during : <br>
- Difference Between docker stop and docker kill
ANS :
 docker stop <br>
   `docker stop <container_ID>` <br>
  - Graceful stop
  - Sends SIGTERM signal first then SIGKILL.
  - Gives the application time to finish tasks and shut down safely.
 
docker kill<br>
   `docker kill <container_ID>` <br>
  - forcefully stop
  - Sends SIGKILL immediately.
  - Container stops instantly without cleanup.
  - May cause data loss

## Task 4 : Working with Running Containers
- Run an Nginx container in detached mode  <br>
  Command: `docker run -d -p 80:80 nginx`
- View its logs  <br>
  Command : `docker logs <container_id>`
- View real-time logs (follow mode)  <br>
  Command: `docker logs -f <container_ID>`
- Exec into the container and look around the filesystem  <br>
  Command :  `docker exec -it <container_id> bash`
- Run a single command inside the container without entering it  <br>
  Command :  `docker exec <container_ID> <command>`
- Inspect the container — find its IP address, port mappings, and mounts  <br>
  docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <container_name>  <br>
  docker inspect -f '{{.Mounts}}' <container_name>  <br>
  docker port <container_name> <br>

  ## Task 5

- Stop all running containers in one command <br>
  Command : `docker stop $(docker ps -q)`
- Remove all stopped containers in one command  <br>
  Command: `docker rm $(docker ps -aq)`
- Remove unused images  <br>
  Command : `docker images prune`
- Check how much disk space Docker is using  <br>
  Command : `docker system df`
