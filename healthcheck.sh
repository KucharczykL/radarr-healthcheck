#!/bin/bash
curl ${RADARR_URL}/api/v3/health?apiKey=${APIKEY} 2>&1 | grep -q error
if [ "$?" -eq 1 ]
then
  echo "No errors."
	exit 0
else
  echo "Errors occurred. Check the web interface."
	exit 1
fi
