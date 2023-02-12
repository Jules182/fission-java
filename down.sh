#!/bin/bash
set -euxo pipefail

id=$(<currentid.txt)
if [ -n "$id" ]
then
  fission function delete --name fn-"${id}"
  fission package delete --name pkg-"${id}"
  fission httptrigger delete --name trigger-"${id}"
  echo "" > currentid.txt
fi
