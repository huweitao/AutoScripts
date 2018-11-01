#!/bin/bash
function podInstallLocal()
{
	cd $1
	echo '-------------------------Pod Install Begins------------------------------'
	pod install
}

echo "Enter Pod Source dir:"

read podSource 

podInstallLocal $podSource
