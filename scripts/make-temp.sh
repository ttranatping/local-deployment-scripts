FOLDER=./temp

if [ -d "$FOLDER" ]; then
  echo "Temp path already exists"
else
  echo "$FOLDER does not exist. Creating."
  mkdir $FOLDER
fi
