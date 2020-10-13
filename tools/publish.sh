set -e

VERSION=$(cat version | awk '{$1=$1;print}')
echo "publish version ${VERSION}"

git config --local user.name "wangshijun"
git config --local user.email "wangshijun2010@gmail.com"

make release
npm config set '//registry.npmjs.org/:_authToken' "${NPM_TOKEN}"
npm install -g @abtnode/cli

echo "publishing abtnode docs blocklet..."
rm -rf public && rm -rf .cache
yarn build-blocklet
rm -f public/*.map
NODE_ENV=production abtnode bundle && npm publish _blocklet --access=public

node tools/post-publish.js

# deploy to remote ABT Node
set +e
NAME=$(cat package.json | grep name |  awk '{print $2}' | sed 's/"//g' | sed 's/,//g')
VERSION=$(cat package.json | grep version |  awk '{print $2}' | sed 's/"//g' | sed 's/,//g')
if [ "${ALIYUN_ENDPOINT}" != "" ]; then
  abtnode deploy . --endpoint ${ALIYUN_ENDPOINT} --access-key ${ALIYUN_ACCESS_KEY} --access-secret ${ALIYUN_ACCESS_SECRET} --skip-hooks
  if [ $? == 0 ]; then
    echo "deploy to ${ALIYUN_ENDPOINT} success"
    curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"${NAME} v${VERSION} was successfully deployed to ${ALIYUN_ENDPOINT}\"}" ${SLACK_WEBHOOK}
  else
    echo "deploy to ${ALIYUN_ENDPOINT} failed"
    curl -X POST -H 'Content-type: application/json' --data "{\"text\":\":x: Faild to deploy ${NAME} v${VERSION} to ${ALIYUN_ENDPOINT}\"}" ${SLACK_WEBHOOK}
  fi
fi
if [ "${AWS_ENDPOINT}" != "" ]; then
  abtnode deploy . --endpoint ${AWS_ENDPOINT} --access-key ${AWS_ACCESS_KEY} --access-secret ${AWS_ACCESS_SECRET} --skip-hooks
  if [ $? == 0 ]; then
    echo "deploy to ${AWS_ENDPOINT} success"
    curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"${NAME} v${VERSION} was successfully deployed to ${AWS_ENDPOINT}\"}" ${SLACK_WEBHOOK}
  else
    echo "deploy to ${AWS_ENDPOINT} failed"
    curl -X POST -H 'Content-type: application/json' --data "{\"text\":\":x: Faild to deploy ${NAME} v${VERSION} to ${AWS_ENDPOINT}\"}" ${SLACK_WEBHOOK}
  fi
fi
