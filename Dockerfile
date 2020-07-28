FROM ubuntu:18.04
LABEL maintainer = "Luis Guerreiro <luiscvlh11@gmail.com>"

WORKDIR /usr/gitlab-ci-cd

EXPOSE 3000

# Instalação do docusaurus
RUN apt-get update && apt-get install curl -y && \
    curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt-get install nodejs -y && \
    npm install --global docusaurus-init && \
    docusaurus-init

# Instalação do website do docusaurus
RUN cd website/ && npm install
