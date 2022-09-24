#!/bin/sh -l

cd $GITHUB_WORKSPACE

TAG="${1}"
PREFIX="${2}"

major=$(echo $TAG | awk -F. '{print $1}')
minor=$(echo $TAG | awk -F. '{print $2}')
patch=$(echo $TAG | awk -F. '{print $3}')

echo "::set-output name=major_version::$PREFIX$major"
echo "::set-output name=minor_version::$PREFIX$major.$minor"
echo "::set-output name=patch_version::$PREFIX$major.$minor.$patch"
