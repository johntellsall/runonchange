#!/bin/bash

set -euo pipefail  # strict mode

command="$*"

while sleep 2 ; do
    FILES=$(git ls-files '*.py' | grep -E -v /migrations)

    clear
    date +%X

    set +e
    ${command}
    echo "STATUS: $?"
    set -e

done
