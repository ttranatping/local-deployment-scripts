$Folder = 'temp/PingDirectory'
if (Test-Path -Path $Folder) {
    echo Stopping existing PingDirectory...
    ./temp/PingDirectory/bat/stop-server

    echo Removing existing PingDirectory...
    Remove-Item ./temp/PingDirectory -Recurse -Force
} else {
    "PingDirectory doesn't exist. Not removing."
}

