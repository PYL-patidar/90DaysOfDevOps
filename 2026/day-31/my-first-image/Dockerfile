# Base image used
FROM ubuntu

# create a direcorty for store the information
WORKDIR /app

# copy entire code and its all requirements from local to image directory
#COPY . .

# For run the command it should be put it here in RUN 
RUN apt-get update && apt-get install -y curl 

# then run the default 
CMD ["echo", " Hello from the custom image "]
