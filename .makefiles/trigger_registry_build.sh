#!/usr/bin/env bash

REPO="ArcBlock/blocklets"
WORKFLOW="main.yml"
REF=master
echo "trigger ArcBlock/blocklets repo release: repo: $REPO, workflow: $WORKFLOW, ref: $REF"
curl \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Authorization: token $GIT_HUB_TOKEN" \
  https://api.github.com/repos/$REPO/actions/workflows/$WORKFLOW/dispatches \
  -d "{\"ref\":\"${REF}\"}"
