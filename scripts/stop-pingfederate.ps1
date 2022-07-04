$Folder = 'temp/pingfederate'
if (Test-Path -Path $Folder) {
    echo Stopping existing PingFederate...
    wmic Path win32_process Where "CommandLine Like '%pingfederate%'" Call Terminate

    echo "Removing existing PingFederate..."
    Remove-Item ./temp/pingfederate -Recurse -Force
} else {
    "PingFederate doesn't exist. Not removing."
}

