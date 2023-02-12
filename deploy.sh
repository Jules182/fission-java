#!/bin/bash
set -euxo pipefail

id=$(<currentid.txt)
if [ -n "$id" ]
then
  fission function delete --name fn-"${id}"
  fission package delete --name pkg-"${id}"
  fission httptrigger delete --name trigger-"${id}"
fi

id=$RANDOM
echo $id > currentid.txt
zip java-src-pkg.zip -r src/ pom.xml
fission package create --name pkg-"${id}" --env java --src java-src-pkg.zip
fission function create --name fn-"${id}" --env java --pkg pkg-"${id}" --entrypoint io.fission.FissionDemo
fission httptrigger create --name trigger-"${id}" --method GET --method POST --url "/demo" --function fn-"${id}"
rm java-src-pkg.zip
