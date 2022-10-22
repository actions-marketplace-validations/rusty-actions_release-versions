#!/bin/sh -l

cd $GITHUB_WORKSPACE

TAG="${1}"
PREFIX="${2}"

MAJOR=$PREFIX$(echo $TAG | awk -F. '{print $1}')
MINOR=$MAJOR.$(echo $TAG | awk -F. '{print $2}')
PATCH=$MINOR.$(echo $TAG | awk -F. '{print $3}')

echo "major_version=$MAJOR" >> $GITHUB_OUTPUT
echo "minor_version=$MINOR" >> $GITHUB_OUTPUT
echo "patch_version=$PATCH" >> $GITHUB_OUTPUT
