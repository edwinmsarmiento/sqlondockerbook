#This script can be used to install and configure Docker CE on an Ubuntu Linux distribution
#Update the Ubuntu system packages
sudo apt-get -y update

#Install the newest versions of all packages currently installed on the system
sudo apt-get -y upgrade

#Install required dependencies
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

#Download and add the official GPG key from Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#Add the Docker Stable Repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#Re-run update before installing Docker CE
sudo apt-get -y update 

#Install Docker CE
sudo apt-get install -y docker-ce

#Create a group named docker
sudo groupadd docker

#Add the current user to the docker group
sudo usermod -aG docker $USER