Docker for Jenkins:

If you want to install Jenkins using Docker on your Windows machine with Docker Desktop,
changing the default port from 8080 to 7070 and create the necessary Docker resources like network and volume ?
Here are the steps to achieve this:

Step 1: Create Docker Network
Run the following command to create a custom network for Jenkins:

docker network create jenkins

Step 2: Create a Volume for Jenkins Data
To persist Jenkins data, create a Docker volume:

docker volume create jenkins_data

Step 3: Pull and Run Jenkins in Docker
Now, you can pull the Jenkins image and run it on the newly created network and volume while changing the port to 7070.

docker run -d --name jenkins \
  --network jenkins \
  -p 7070:8080 \
  -v jenkins_data:/var/jenkins_home \
  jenkins/jenkins:lts


This command:

- Runs Jenkins in detached mode (-d).
- Exposes Jenkins on port 7070 (-p 7070:8080).
- Connects Jenkins to the previously created jenkins network (--network jenkins).
- Mounts the Docker volume jenkins_data to store Jenkins data persistently.