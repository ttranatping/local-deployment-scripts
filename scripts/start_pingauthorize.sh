./scripts/stop-pingauthorize.sh
./scripts/make-temp.sh

unzip -q binaries/PingAuthorize-*.zip -d ./temp

cp -R overlays/pingauthorize/* ./temp/PingAuthorize/

export USER_BASE_DN=dc=data-holder,dc=com
export ROOT_USER_DN=cn=administrator
export ROOT_USER_PASSWORD_FILE=../../sec/default-password
export PINGFEDERATE_HOSTNAME=localhost:9031
export PINGDIRECTORY_HOSTNAME=localhost:1443
export LOCATION=localhost

./temp/PingAuthorize/bin/manage-profile setup --licenseKeyFile ./licenses/PingAuthorize.lic --profile ./temp/PingAuthorize/pd.profile --useEnvironmentVariables
# --rejectFile rejectFile.ldif
