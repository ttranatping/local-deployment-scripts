& scripts/stop-pingfederate.ps1
& scripts/make-temp.ps1

Expand-Archive -Force binaries/pingfederate-*.zip ./temp
mv ./temp/pingfederate-*/pingfederate ./temp/pingfederate
Remove-Item ./temp/pingfederate-* -Recurse

copy-item -Path overlays/pingfederate/* -Destination ./temp/pingfederate/ -Recurse -Force
copy-item licenses/pingfederate.lic ./temp/pingfederate/server/default/conf/ -Force

Start-Process 'cmd' -Argument "/c $pwd\temp\pingfederate\bin\run.bat" -PassThru -WindowStyle Hidden