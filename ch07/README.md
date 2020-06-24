#  Chapter 7: Persisting Data

The goal of a SQL Server DBA is to protect data. But because containers were originally designed for stateless applications, there are some misconceptions around leveraging containers for stateful applications like relational databases. This chapter covers working with stateful applications in containers, working with volumes and using volumes to store SQL Server database files.

The sample code provided allows you to persist data when working with SQL Server on Docker containers. All of the commands are for a Linux Docker host. 