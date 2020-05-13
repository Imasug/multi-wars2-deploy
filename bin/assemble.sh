#!/bin/bash -e

git clone -b master https://github.com/Imasug/multi-wars2.git --depth 1

mvn clean package -f multi-wars2/pom.xml

cp `find multi-wars2 -name *.war` "${JWS_WEBAPPS_DIR}"