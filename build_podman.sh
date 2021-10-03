#!/bin/bash

cp -r app/Binix/dns.db ./
dotnet publish src/Binix -c Release -o app/
cp -r ./dns.db ./app/Binix/

cp -r appsettings.json /app/Binix/

podman build . --tag binix-yarp:latest
sleep 1000