FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
EXPOSE 80
EXPOSE 443
COPY PlayGroundClient.csproj .
RUN dotnet restore PlayGroundClient.csproj
COPY . .
RUN dotnet build PlayGroundClient.csproj -c Release -o /app/build

FROM build AS publish
RUN dotnet publish PlayGroundClient.csproj -c Release -o /app/publish

FROM nginx:alpine AS final
WORKDIR /usr/share/nginx/html
COPY --from=publish /app/publish/wwwroot .
COPY nginx.conf /etc/nginx/nginx.conf