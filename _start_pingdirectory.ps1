& scripts/stop-pd.ps1

mkdir temp

Expand-Archive -Force binaries/PingDirectory-*.zip ./temp

copy-item -Path overlays/pingdirectory/* -Destination ./temp/PingDirectory/ -Recurse -Force

$Env:USER_BASE_DN="dc=data-holder,dc=com"
$Env:PINGFEDERATE_HOSTNAME="localhost:2031"
$Env:ROOT_USER_DN="cn=administrator"
$Env:ROOT_USER_PASSWORD_FILE="../../sec/default-password"
$Env:BASE_DC_VALUE="data-holder"

./temp/PingDirectory/bat/manage-profile setup --licenseKeyFile ./licenses/PingDirectory.lic --profile ./temp/PingDirectory/pd.profile --useEnvironmentVariables