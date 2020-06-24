#  Chapter 9: Creating Custom SQL Server on Windows Container Images

While working with publicly available SQL Server container images can be a great start to learning SQL Server on containers, DBAs may want to create custom SQL Server images that have specific configuration requirements for standardizing deployments such as having user databases or tools installed for development environments.

This chapter covers working with Dockerfile, a text document that contains all the commands a user could run on the command line to create a custom image. A Dockerfile will be created to build and deploy a custom SQL Server on Windows container image. 


The sample code provided allows you to create a custom SQL Server on Windows image.