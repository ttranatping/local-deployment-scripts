$Folder = 'temp/PingDataSync'
if (Test-Path -Path $Folder) {
    echo Stopping existing PingDataSync...
    ./temp/PingDataSync/bat/stop-server

    echo Removing existing PingDataSync...
    Remove-Item ./temp/PingDataSync -Recurse -Force
} else {
    "PingDataSync doesn't exist. Not removing."
}

