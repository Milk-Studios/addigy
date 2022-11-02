#!/bin/bash

dotnet5binary="/usr/local/share/dotnet/dotnet"
dotnet6binary="/usr/local/share/dotnet/x64/dotnet"

if [ -f "$dotnet5binary" ]; then
	"$dotnet5binary" --list-runtimes | awk {'print $2'}
elif [ -f "$dotnet6binary" ]; then
	"$dotnet6binary" --list-runtimes | awk {'print $2'}
else
	exit 117
fi

exit 0