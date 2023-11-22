#!/usr/bin/env bash
#
#
# Add Docker's official GPG key:
sudo apt-get update -y
sudo apt-get install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Install docker components
sudo apt-get install -y unzip docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Pull down labs
mkdir /opt/labs
curl https://raw.githubusercontent.com/jpclouduk/labs/main/Ex_Files_Learning_Docker_Upd.zip -o /opt/labs/Ex_Files_Learning_Docker_Upd.zip

