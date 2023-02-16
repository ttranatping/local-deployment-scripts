FOLDER=./temp/PingDataSync

if [ -d "$FOLDER" ]; then
  echo "Stopping existing PingDataSync..."

  ./temp/PingDataSync/bin/stop-server

  echo "Removing existing PingDataSync..."
  rm -rf $FOLDER
else
    echo "$FOLDER does not exist."
fi
