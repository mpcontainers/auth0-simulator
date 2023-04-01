#!/bin/bash

mkdir -p /root/.simulacrum/certs
cd /root/.simulacrum/certs

/home/linuxbrew/.linuxbrew/bin/mkcert -install
/home/linuxbrew/.linuxbrew/bin/mkcert localhost

npx auth0-simulator
