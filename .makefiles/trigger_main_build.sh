#!/usr/bin/env bash

# trigger main repo release if we merged to master
if [ "$TRAVIS_PULL_REQUEST" = false ]; then
  MAIN_REPO_SLUG="ArcBlock/www-docs"

  travis login --pro --github-token=$GITHUB_TOKEN

  BUILD_ID=`travis branches --pro --repo $MAIN_REPO_SLUG | grep master | awk '{print $2}' | awk -F# '{print $2}'`
  echo "Last build for main repo is: $BUILD_ID"

  travis cancel --pro --repo $MAIN_REPO_SLUG $BUILD_ID
  travis restart --pro --repo $MAIN_REPO_SLUG $BUILD_ID
fi
