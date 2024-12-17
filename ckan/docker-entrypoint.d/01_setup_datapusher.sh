#!/bin/bash

# Check the ownership of the source directory (if necessary)
if [ -d "src" ]; then
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        USER_ID=$(stat -c '%u' src)
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        USER_ID=$(stat -f '%u' src)
    else
        echo "Unsupported OS"
        exit 1
    fi
    
    echo "User ID of the owner of src: $USER_ID"
else
    echo "Source directory 'src' does not exist."
fi


if [[ $CKAN__PLUGINS == *"datapusher"* ]]; then
   # Datapusher settings have been configured in the .env file
   # Set API token if necessary
   if [ -z "$CKAN__DATAPUSHER__API_TOKEN" ] ; then
      echo "Set up ckan.datapusher.api_token in the CKAN config file"
      ckan config-tool $CKAN_INI "ckan.datapusher.api_token=$(ckan -c $CKAN_INI user token add ckan_admin datapusher | tail -n 1 | tr -d '\t')"
   fi
else
   echo "Not configuring DataPusher"
fi
