#!/usr/bin/env bash

# trigger ArcBlock/blocklets repo release if we merged to master
if [ "$TRAVIS_PULL_REQUEST" = false ]; then
  GIT_HUB_TOKEN=$GITHUB_TOKEN
  REPO="ArcBlock/blocklets"
  WORKFLOW="main.yml"
  REF=master
  echo "start github actions trigger: repo: $REPO, workflow: $WORKFLOW, ref: $REF"
  curl \
    -X POST \
    -H "Accept: application/vnd.github.v3+json" \
    -H "Authorization: token $GIT_HUB_TOKEN" \
    https://api.github.com/repos/$REPO/actions/workflows/$WORKFLOW/dispatches \
    -d "{\"ref\":\"${REF}\"}"
fi
