#!/bin/bash
test $RADARR_URL -a $APIKEY || echo "RADARR_URL or APIKEY not defined."; exit 1
curl ${RADARR_URL}/api/v3/health?apiKey=${APIKEY} 2>&1 | grep -q error
if [ "$?" -eq 1 ]
then
  echo "No errors."
	exit 0
else
  echo "Errors occured. Check the web interface."
	exit 1
fi
