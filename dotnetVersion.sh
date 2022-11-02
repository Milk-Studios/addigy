#!/bin/bash

## Returns a list of the installed dotnet runtime versions.
## Set the Return Type to List

binary_location=`cat /etc/dotnet/install_location`

if [ -f "$binary_location/dotnet" ]; then
	"$binary_location/dotnet" --list-runtimes | awk {'print $2'}
else
	exit 117
fi

exit 0