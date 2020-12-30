#!/bin/bash

# Docker install
sudo yum update
sudo yum install -y docker
sudo docker --version

# Docker setup
sudo systemctl start docker
sudo systemctl enbale docker

sudo groupadd docker
sudo gpasswd -a $USER docker
sudo systemctl restart docker


## Docker Compose install
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo docker-compose --version
