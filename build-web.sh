#!/bin/bash

dotnet restore
bower install
npm install

cp ./node_modules/\@aspnet/signalr-client/dist/browser/signalr-client-1.0.0-alpha1-final.min.js ./wwwroot/lib/signalr/signalr-client.min.js

dotnet build