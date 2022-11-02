#!/bin/bash

## Returns a list of installed .NET runtime versions.
## Returns "n/a" via 'exit 117' if .NET isn't installed.
## Set the Custom Fact "Return Type" to "List".

install_location_file="/etc/dotnet/install_location"

 if [ -f "$install_location_file" ]; then
 	binary_location=`cat "$install_location_file"`
	"$binary_location/dotnet" --list-runtimes | awk {'print $2'}
 else
 	exit 117
fi

exit 0