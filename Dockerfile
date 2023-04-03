FROM node

ENV PORT 4000
RUN apt update
RUN apt install -y libnss3-tools build-essential
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
RUN /home/linuxbrew/.linuxbrew/bin/brew install mkcert
RUN npm i @simulacrum/auth0-simulator@0.9.0 -g
WORKDIR /
COPY entrypoint.sh entrypoint.sh

ENTRYPOINT [ "sh", "entrypoint.sh" ]
