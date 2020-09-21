#!/bin/bash
set -x
APIKEY=$(grep ApiKey /config/config.xml | sed -r 's/<\/?ApiKey>//g')
curl ${RADARR_URL}/api/v3/health?apiKey=${APIKEY} 2>&1 | grep -q error
if [ "$?" -eq 1 ]
then
	# no errors
	exit 0
else
	exit 1
fi
