FOLDER=./temp/PingAuthorize-PAP

if [ -d "$FOLDER" ]; then
  echo "Stopping existing PingAuthorize-PAP..."

  ./temp/PingAuthorize-PAP/bin/stop-server

  echo "Removing existing PingAuthorize-PAP..."
  rm -rf $FOLDER
else
    echo "$FOLDER does not exist."
fi
