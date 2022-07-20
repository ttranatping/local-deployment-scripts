& scripts/stop-pingdirectoryproxy.ps1
& scripts/make-temp.ps1

Expand-Archive -Force binaries/PingDirectoryProxy-*.zip ./temp

copy-item -Path overlays/pingdirectoryproxy/* -Destination ./temp/PingDirectoryProxy/ -Recurse -Force

$Env:USER_BASE_DN="dc=data-holder,dc=com"
$Env:PINGFEDERATE_HOSTNAME="localhost:2031"
$Env:ROOT_USER_DN="cn=administrator"
$Env:ROOT_USER_PASSWORD_FILE="../../sec/default-password"
$Env:BASE_DC_VALUE="data-holder"
$Env:PD_ENGINE_PRIVATE_HOSTNAME="localhost"
$Env:PD_ENGINE_PRIVATE_PORT_LDAPS="1636"
$Env:LOCATION="localhost-demo"

./temp/PingDirectoryProxy/bat/manage-profile setup --licenseKeyFile ./licenses/PingDirectory.lic --profile ./temp/PingDirectoryProxy/pd.profile --useEnvironmentVariables
