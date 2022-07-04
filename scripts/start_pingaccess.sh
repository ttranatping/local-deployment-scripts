./scripts/stop-pingaccess.sh
./scripts/make-temp.sh

unzip -q binaries/pingaccess-*.zip -d ./temp
mv temp/pingaccess-* temp/pingaccess

cp -R overlays/pingaccess/* ./temp/pingaccess/
cp licenses/pingaccess.lic ./temp/pingaccess/conf/

nohup ./temp/pingaccess/bin/run.sh &> temp/pingaccess.out &
