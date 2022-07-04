& scripts/stop-pingaccess.ps1
& scripts/make-temp.ps1

Expand-Archive -Force binaries/pingaccess-*.zip ./temp
mv temp/pingaccess-* temp/pingaccess

copy-item -Path overlays/pingaccess/* -Destination ./temp/pingaccess/ -Recurse -Force
copy-item licenses/pingaccess.lic ./temp/pingaccess/conf/ -Force

Start-Process 'cmd' -Argument "/c $pwd\temp\pingaccess\bin\run.bat" -PassThru -WindowStyle Hidden
