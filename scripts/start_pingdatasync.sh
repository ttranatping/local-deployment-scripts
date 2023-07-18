./scripts/stop-pingdatasync.sh
./scripts/make-temp.sh

unzip -q binaries/PingDataSync-*.zip -d ./temp

cp -R overlays/pingdatasync/* ./temp/PingDataSync/

export USER_BASE_DN=dc=data-holder,dc=com
export PINGFEDERATE_HOSTNAME=localhost:2031
export ROOT_USER_DN=cn=administrator
export ROOT_USER_PASSWORD_FILE=../../sec/default-password
export BASE_DC_VALUE=data-holder

./temp/PingDataSync/bin/manage-profile setup --licenseKeyFile ./licenses/PingDirectory.lic --profile ./temp/PingDataSync/pd.profile --useEnvironmentVariables
# --rejectFile rejectFile.ldif
