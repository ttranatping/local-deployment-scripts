./scripts/stop-pingdirectoryproxy.sh
./scripts/make-temp.sh

unzip -q binaries/PingDirectoryProxy-*.zip -d ./temp

cp -R overlays/pingdirectoryproxy/* ./temp/PingDirectoryProxy/

export USER_BASE_DN=dc=data-holder,dc=com
export PINGFEDERATE_HOSTNAME=localhost:2031
export ROOT_USER_DN=cn=administrator
export ROOT_USER_PASSWORD_FILE=../../sec/default-password
export BASE_DC_VALUE=data-holder
export PD_ENGINE_PRIVATE_HOSTNAME=localhost
export PD_ENGINE_PRIVATE_PORT_LDAPS=1636
export LOCATION=Docker

./temp/PingDirectoryProxy/bin/manage-profile setup --licenseKeyFile ./licenses/PingDirectory.lic --profile ./temp/PingDirectoryProxy/pd.profile --useEnvironmentVariables
# --rejectFile rejectFile.ldif
