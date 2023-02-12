#!/bin/bash
set -euxo pipefail

id=$(<currentid.txt)
fission function log --name fn-"${id}" --follow
