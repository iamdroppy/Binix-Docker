#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443
EXPOSE 8080

COPY ["./app", "/app"]

WORKDIR /app
ENTRYPOINT ["dotnet", "Binix.dll"]
