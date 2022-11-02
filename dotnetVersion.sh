#!/bin/bash

## Returns a list of installed .NET runtime versions.
## Returns "n/a" via 'exit 117' if .NET isn't installed.
## Set the Custom Fact "Return Type" to "List".

base_install_dir="/usr/local/share/dotnet"
dotnet_binary=$(find "$base_install_dir" -type f -name dotnet)

if [ -z "$dotnet_binary" ]; then
	exit 117
else
	"$dotnet_binary" --list-runtimes | awk {'print $2'}
fi

exit 0