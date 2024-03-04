#!/usr/bin/env bash

set -xeuo pipefail

compose_files=$(find . -maxdepth 1 -mindepth 1 -name "*.yaml")
find ./ -type f -size +50M ! \( -name "*deb" -o -name "*vmdk" \)

for i in $compose_files; do
    echo checking "$i"
    docker compose -f "$i" --env-file ./test.env config
done
