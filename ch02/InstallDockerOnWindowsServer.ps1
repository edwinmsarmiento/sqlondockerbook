#Install Docker on WIndows Server

Install-WindowsFeature –Name Containers

Restart-Computer

Install-Module -Name DockerMsftProvider -Force

Install-Package -Name docker -ProviderName DockerMsftProvider -Force

docker version

docker info

