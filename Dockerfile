FROM jenkins:latest

USER root

ENV DEBIAN_FRONTEND noninteractive
ENV NODE_VERSION 4.2.2

RUN apt-get update && \
    apt-get install -y build-essential libssl-dev python-dev libffi-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


ADD https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz /node.tar.gz

RUN tar -xzf node.tar.gz --strip-components=1 -C /

USER jenkins
