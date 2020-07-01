#Step 1
FROM mcr.microsoft.com/windows/servercore:10.0.14393.2972

#Step 2
RUN powershell -Command (mkdir C:\SQL2016Dev_SP2)

#Step 3
COPY /SQL2016Dev_SP2 C:/SQL2016Dev_SP2

#Step 4
RUN C:/SQL2016Dev_SP2/SETUP.exe /Q /ACTION=INSTALL /UPDATEENABLED=True /UPDATESOURCE=./SQLServer2016SP2CU11 /FEATURES=SQLENGINE /INSTANCENAME=MSSQLSERVER /SECURITYMODE=SQL /SAPWD="y0urSecUr3PAssw0rd" /SQLSVCACCOUNT="NT AUTHORITY\System" /AGTSVCACCOUNT="NT AUTHORITY\System" /SQLSYSADMINACCOUNTS="BUILTIN\Administrators" /IACCEPTSQLSERVERLICENSETERMS=1 /TCPENABLED=1

#Step 5
RUN powershell -Command (Set-Service MSSQLSERVER -StartupType Automatic)

#Step 6
RUN powershell -Command (Remove-Item -Path C:/SQL2016Dev_SP2 -Recurse -Force)

#Step 7
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

#Step 8
COPY /start.ps1 /

#Step 9
WORKDIR /
ENV SA_PASSWORD "y0urSecUr3PAssw0rd"
ENV ACCEPT_EULA "Y"

#Step 10
CMD ./start -sa_password $env:SA_PASSWORD -ACCEPT_EULA $env:ACCEPT_EULA -Verbose