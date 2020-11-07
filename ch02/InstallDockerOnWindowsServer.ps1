#Install Docker on WIndows Server

Install-WindowsFeature –Name Containers

Restart-Computer

#This addresses issue defined in https://github.com/OneGet/MicrosoftDockerProvider/issues/78
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
Register-PSRepository -Default -Verbose
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted

#Install the DockerMicrosoft PackageManagement provider
Install-Module -Name DockerMsftProvider -Force

#Install the Docker package
Install-Package -Name docker -ProviderName DockerMsftProvider -Force

docker version

docker info

