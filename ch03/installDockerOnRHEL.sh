#This script can be used to install and configure Docker CE on a RHEL/CentOS Linux distribution
#Update the RHEL/CentOS system packages
sudo yum -y update

#Install the Required Dependencies
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

#Add the Docker Stable Repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

#Install Docker CE
sudo yum install -y docker-ce

#Starting the Docker Daemon
sudo systemctl start docker

#Enabling the Docker Daemon on Startup
sudo systemctl enable docker

#Create a group named docker
sudo groupadd docker

#Add the current user to the docker group
sudo usermod -aG docker $USER