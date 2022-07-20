$Folder = 'temp/PingDirectoryProxy'
if (Test-Path -Path $Folder) {
    echo Stopping existing PingDirectoryProxy...
    ./temp/PingDirectoryProxy/bat/stop-server

    echo Removing existing PingDirectoryProxy...
    Remove-Item ./temp/PingDirectoryProxy -Recurse -Force
} else {
    "PingDirectoryProxy doesn't exist. Not removing."
}
