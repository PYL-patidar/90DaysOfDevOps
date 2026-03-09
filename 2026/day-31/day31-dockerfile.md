- CMD vs ENTRYPOINT
In Docker, CMD and ENTRYPOINT both define what command runs when a container starts, but they behave differently.

- CMD
CMD provides the default command for the container.
It can be overridden easily when you run the container.
If you specify another command in docker run, it replaces CMD completely.
- Example
`FROM ubuntu
CMD ["echo", "Hello World"]`

- ENTRYPOINT
ENTRYPOINT defines the main command that always runs.
It cannot be overridden easily.
Any extra arguments given in docker run are appended to ENTRYPOINT.
- Example
`FROM ubuntu
ENTRYPOINT ["echo"]`

- RUN
RUN is used during the image build process to execute commands and create a new layer in the Docker image.
It runs when the image is being built (docker build)
It is not executed when the container starts
- Example
`FROM ubuntu
RUN apt update
RUN apt install -y nginx`

- When would you use CMD vs ENTRYPOINT?
  Use CMD when you want a default command that can be overridden. <br>
  Use ENTRYPOINT when the container should run a fixed executable and only accept arguments. <br>

- Why does layer order matter for build speed in Docker? <br>
In Docker, each instruction in a Dockerfile (like FROM, COPY, RUN) creates a separate layer. Docker uses layer caching to speed up the image build process.
Because of caching, the order of layers matters. <br>
Explanation <br>
Docker builds images from top to bottom. <br>
If a layer has not changed, Docker reuses the cached layer. <br>
But if a layer changes, Docker must rebuild that layer and all layers after it.<br>
