FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /source

COPY *.csproj .
RUN  dotnet restore

COPY . .
RUN dotnet publish -c release -o /app

# make artifact
FROM   mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY  --from=build  /app  .
ENTRYPOINT [ "dotnet","hrapp.dll" ]




