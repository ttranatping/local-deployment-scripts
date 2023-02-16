FOLDER=./temp/PingAuthorize

if [ -d "$FOLDER" ]; then
  echo "Stopping existing PingAuthorize..."

  ./temp/PingAuthorize/bin/stop-server

  echo "Removing existing PingAuthorize..."
  rm -rf $FOLDER
else
    echo "$FOLDER does not exist."
fi
