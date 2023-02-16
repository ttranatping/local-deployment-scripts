./scripts/stop-pingauthorizepap.sh
./scripts/make-temp.sh

unzip -q binaries/PingAuthorizePAP-*.zip -d ./temp

cp -R overlays/pingauthorizepap/instance/* ./temp/PingAuthorize-PAP/

cd ./temp/PingAuthorize-PAP

export PINGFEDERATE_HOSTNAME=localhost:9031
export PINGDIRECTORY_HOSTNAME=localhost:1443

echo "Running setup..."

./bin/setup demo --adminUsername admin \
  --generateSelfSignedCertificate \
  --licenseKeyFile ../../licenses/PingAuthorize.lic --decisionPointSharedSecret '2FederateM0re' \
  --hostname localhost --port 9443 --adminPort 8443

echo "Setup completed. Starting server..."

./bin/start-server

echo "Server started. Importing default policy..."

snapshotId=$(curl -H "x-user-id: admin" -k -d @"../../overlays/pingauthorizepap/policies/defaultPolicies.SNAPSHOT" "https://localhost:9443/api/snapshot/defaultPolicies/import" | jq -r '.id')

echo "Imported Snapshot ID: ${snapshotId}"
