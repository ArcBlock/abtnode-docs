#!/usr/bin/env bash

# trigger ArcBlock/blocklets repo release if we merged to master
if [ "$TRAVIS_PULL_REQUEST" = false ]; then
  travis login --pro --github-token=$GITHUB_TOKEN
  REPO_SLUG="ArcBlock/blocklets"
  BUILD_ID=`travis branches --repo $REPO_SLUG | grep master | awk '{print $2}' | awk -F# '{print $2}'`
  echo "Last build for $REPO_SLUG repo is: $BUILD_ID"
  travis cancel --repo $REPO_SLUG $BUILD_ID
  travis restart --repo $REPO_SLUG $BUILD_ID
fi
