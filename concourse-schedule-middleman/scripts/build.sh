#!/usr/bin/env bash

set -o -e -x errexit

ls -Alu

current_version=$(date)

git clone ./source-code ./source-code-modified

cd ./source-code-modified

echo $current_version > version

git config --global user.name "CI Works"
git config --global user.email "concourse.ci@51any.com"

echo "New Version will be $current_version"

ls -Alu

cat version

git commit -am "Updated version to $current_version [ci skip]"


