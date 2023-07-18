& scripts/stop-pingdatasync.ps1
& scripts/make-temp.ps1

Expand-Archive -Force binaries/PingDataSync-*.zip ./temp

copy-item -Path overlays/pingdatasync/* -Destination ./temp/PingDataSync/ -Recurse -Force

$Env:USER_BASE_DN="dc=data-holder,dc=com"
$Env:PINGFEDERATE_HOSTNAME="localhost:2031"
$Env:ROOT_USER_DN="cn=administrator"
$Env:ROOT_USER_PASSWORD_FILE="../../sec/default-password"
$Env:BASE_DC_VALUE="data-holder"


./temp/PingDataSync/bat/manage-profile setup --licenseKeyFile ./licenses/PingDirectory.lic --profile ./temp/PingDataSync/pd.profile --useEnvironmentVariables