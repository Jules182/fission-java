#!/bin/bash
set -euxo pipefail

id=$(<currentid.txt)
fission function test --name fn-"${id}"

# --method GET --header test:header --header bre:wow --query q1=low --query q2=high
