FOLDER=./temp/pingfederate

if [ -d "$FOLDER" ]; then
  echo "Stopping existing PingFederate..."

  SERVICE=$(ps aux | grep java | grep pingfederate | grep -v grep | awk '{print $2}')
  echo "Service: $SERVICE"
  if [[ ! -z "$SERVICE" ]];
  then
      echo "$SERVICE is running. Stopping service."
      kill -9 "$SERVICE"
  else
      echo "$SERVICE already stopped"
  fi

  echo "Removing existing PingFederate..."
  rm -rf $FOLDER
else
    echo "$FOLDER does not exist."
fi
