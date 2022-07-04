$Folder = 'temp'
if (Test-Path -Path $Folder) {
    "Temp path already exists"
} else {
    "Path doesn't exist. Making temp path."
    mkdir $Folder
}