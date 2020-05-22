# set base image to Ubuntu
FROM ubuntu:18.04

# File author / maintainer
MAINTAINER Fenglin Chen <g3chen@oicr.on.ca>

# Setup packages
USER root
RUN apt-get -m update && apt-get install -y wget unzip zip openjdk-8-jre

# get the specific tool and install it in /usr/local/bin
# RUN wget -q http://downloads.sourceforge.net/project/bamstats/BAMStats-1.25.zip
# RUN unzip BAMStats-1.25.zip && \
#    rm BAMStats-1.25.zip && \
#    mv BAMStats-1.25 /opt/
COPY bin/output.sh /usr/local/bin
RUN chmod a+x /usr/local/bin/output.sh

# switch back to the ubuntu user so this tool (and files written) are not owned by root
RUN groupadd -r -g 1000 ubuntu && useradd -r -g ubuntu -u 1000 ubuntu
USER ubuntu

# by default /bin/bash is executed
CMD [/bin/bash]

