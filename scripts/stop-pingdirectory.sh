FOLDER=./temp/PingDirectory

if [ -d "$FOLDER" ]; then
  echo "Stopping existing PingDirectory..."

  ./temp/PingDirectory/bin/stop-server

  echo "Removing existing PingDirectory..."
  rm -rf $FOLDER
else
    echo "$FOLDER does not exist."
fi
