FROM jenkins:latest

USER root

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y build-essential libssl-dev python-dev nodejs npm && \
    apt-get clean

USER jenkins
