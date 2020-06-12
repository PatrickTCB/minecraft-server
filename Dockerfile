# Pull base image.
FROM ubuntu:18.04

# Install Java.
RUN \
  apt-get update && \
  apt-get install -y openjdk-8-jdk-headless


# Define working directory.
RUN mkdir /data
WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/open-jdk

#ADD server.jar /data/minecraft-server.jar
#ADD eula.txt /data/eula.txt

# Start minecraft on launch.
CMD ["java", "-Xms1G", "-Xmx10G", "-jar", "/data/minecraft-server.jar", "nogui"]
