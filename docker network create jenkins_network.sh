docker network create jenkins_network

docker volume create jenkins_data

docker pull jenkins/jenkins:lts

docker run -d --name jenkins \
  --network jenkins_network \
  -p 7070:8080 \
  -v jenkins_data:/var/jenkins_home \
  jenkins/jenkins:lts


docker ps


CONTAINER ID   IMAGE                COMMAND                  CREATED       STATUS       PORTS                     NAMES
xxxxxxxxxxxx   jenkins/jenkins:lts   "/sbin/tini -- /usr/…"   x seconds ago Up x minutes  0.0.0.0:7070->8080/tcp    jenkins


docker logs jenkins


*************************************************************
Jenkins initial setup is required. An admin user has been created and a password generated.
Please use the following password to proceed to installation:
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
This may also be found at: /var/jenkins_home/secrets/initialAdminPassword
*************************************************************


docker stop jenkins
docker start jenkins
docker logs jenkins





