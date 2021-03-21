FROM jenkins/jenkins:lts

USER root
RUN apt-get update -qq && apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables
    
RUN mkdir download
RUN cd download
COPY ./get-docker.sh /download/get-docker.sh

RUN chmod +x ./download/get-docker.sh
RUN ./download/get-docker.sh

RUN usermod -aG docker jenkins

USER jenkins

# CMD dockerd