# Pull base image.
FROM ubuntu:latest

# Install Java.
RUN \
  apt-get update && \
  apt-get install -y default-jdk


# Define working directory.
RUN mkdir /data
WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/open-jdk

#ADD server.jar /data/minecraft-server.jar
#ADD eula.txt /data/eula.txt

# Start minecraft on launch.
CMD ["java", "-jar", "/data/minecraft-server.jar", "nogui"]