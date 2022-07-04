$Folder = 'temp/pingaccess'
if (Test-Path -Path $Folder) {
    echo Stopping existing PingAccess...
    wmic Path win32_process Where "CommandLine Like '%pingaccess%'" Call Terminate

    echo "Removing existing PingAccess..."
    Remove-Item ./temp/pingaccess -Recurse -Force
} else {
    "PingAccess doesn't exist. Not removing."
}


