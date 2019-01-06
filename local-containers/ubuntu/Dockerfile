#OS & Stuff
FROM ubuntu:18.10

# Packages
RUN apt-get update && apt-get install sudo && apt-get install locales
RUN apt-get install -y vim openjdk-8-jdk curl unzip zip maven ant

# Set the locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Install dependencies
ENV DEBIAN_FRONTEND noninteractive
#/*uncomment below install incase you really need it. takes lot of time.*/
#RUN sudo apt-get install -qq wget unzip build-essential cmake gcc libcunit1-dev libudev-dev

# Grab the checked out source
RUN mkdir -p /workdir
WORKDIR /workdir
COPY . /workdir

# set sdkman
RUN ["/bin/bash", "-c", "echo hello"]
RUN curl -s "https://get.sdkman.io" | bash
RUN ["/bin/bash", "-c", "source $HOME/.sdkman/bin/sdkman-init.sh; sdk install springboot; sdk install groovy;"]

# set sprintboot manually if sdkman doesnt work
RUN sudo curl -s "spring-boot-cli-2.1.1.RELEASE-bin.tar.gz" | bash

