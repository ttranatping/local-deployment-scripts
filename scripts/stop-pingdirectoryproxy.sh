FOLDER=./temp/PingDirectoryProxy

if [ -d "$FOLDER" ]; then
  echo "Stopping existing PingDirectoryProxy..."

  ./temp/PingDirectoryProxy/bin/stop-server

  echo "Removing existing PingDirectoryProxy..."
  rm -rf $FOLDER
else
    echo "$FOLDER does not exist."
fi
