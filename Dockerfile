FROM microsoft/aspnetcore:2.0

ENTRYPOINT ["dotnet", "service-bus-sample.dll"]

ARG source=bin/Release/netcoreapp2.0/publish
WORKDIR /app

COPY $source .