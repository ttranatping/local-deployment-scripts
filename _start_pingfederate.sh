mkdir temp

unzip -q binaries/pingfederate-*.zip -d ./temp
mv ./temp/pingfederate-*/pingfederate ./temp/pingfederate
rm -R ./temp/pingfederate-*

cp -R overlays/pingfederate/* ./temp/pingfederate/
cp licenses/pingfederate.lic ./temp/pingfederate/server/default/conf/

nohup ./temp/pingfederate/bin/run.sh &> pingfederate.out &
