# Requires installation of Ping Identity devops utilities
# https://devops.pingidentity.com/get-started/introduction/

pingctl license PingDirectory 9.3 > ./licenses/PingDirectory.lic
pingctl license pingfederate 11.3 > ./licenses/pingfederate.lic
pingctl license pingaccess 7.3 > ./licenses/pingaccess.lic
pingctl license PingAuthorize 9.3 > ./licenses/PingAuthorize.lic
