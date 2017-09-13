#!/usr/bin/env bash

set -o -e -x errexit

echo "Pushing the changes ..."

git push origin master --tags
