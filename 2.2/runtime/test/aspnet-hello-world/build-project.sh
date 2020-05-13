#!/bin/bash

rm -rf bin obj

dotnet restore -r rhel.7-x64
dotnet publish -f netcoreapp2.2 -c Release -r rhel.7-x64 --self-contained false /p:PublishWithAspNetCoreTargetManifest=false

tar -czvf app.tar.gz -C bin/Release/netcoreapp2.2/rhel.7-x64/publish .