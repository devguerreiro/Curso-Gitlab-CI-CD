FROM ubuntu:18.04
LABEL maintainer = "Luis Guerreiro <luiscvlh11@gmail.com>"

WORKDIR /usr/gitlab-ci&cd

EXPOSE 3000

RUN apt-get update && apt-get install curl -y

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt-get install nodejs -y

RUN npm install --global docusaurus-init && \
    docusaurus-init

RUN cd website/ && npm install