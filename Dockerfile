FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk 
RUN apt-get install maven -y
RUN apt-get install git -y
#VOLUME /home/home/devops-school/docker-compose-java/boxfuse:/usr/boxfuse
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /usr/boxfuse 
#COPY /home/home/devops-school/docker-compose-java/boxfuse /usr/boxfuse
WORKDIR /usr/boxfuse
RUN mvn package
#VOLUME /home/home/devops-school/docker-compose-java/share
#COPY /usr/boxfuse/target/hello-1.0.war /home/home/devops-school/docker-compose-java/share


