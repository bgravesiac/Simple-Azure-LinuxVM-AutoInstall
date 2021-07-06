#! /bin/bash
sudo apt update && sudo apt upgrade
sudo apt install nginx -y
sudo apt install curl
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo apt-get update
sudo apt-get upgrade
sudo shutdown -r +2