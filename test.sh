#!/bin/bash
echo "Will clean, prepare and perform a release"
mvn -B release:clean release:prepare release:perform
LATEST_TAG=$(git describe --abbrev=0 --tags)
echo "The latest tag is: "  $LATEST_TAG
echo "Will create release branch based on" $LATEST_TAG "tag"
mvn -B release:branch -DbranchName=$LATEST_TAG"-RB" -DupdateWorkingCopyVersions=false


