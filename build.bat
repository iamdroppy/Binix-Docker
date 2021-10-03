@echo off

git clone https://github.com/iamdroppy/Binix src
copy app/dns.db ./
dotnet publish src/Binix -c Release -o app/
copy ./dns.db ./app/

copy appsettings.json /app/

docker build . --tag binix-yarp:latest
pause