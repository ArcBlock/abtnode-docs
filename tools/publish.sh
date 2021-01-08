set -e

VERSION=$(cat version | awk '{$1=$1;print}')
echo "publish version ${VERSION}"

yarn

git config --local user.name "wangshijun"
git config --local user.email "wangshijun2010@gmail.com"

make release
npm config set '//registry.npmjs.org/:_authToken' "${NPM_TOKEN}"
sudo npm install -g @abtnode/cli

echo "publishing abtnode docs blocklet..."
npm run bundle

npm publish .blocklet/bundle --access=public

node tools/post-publish.js

# deploy to remote ABT Node
set +e
NAME=$(cat package.json | grep name |  awk '{print $2}' | sed 's/"//g' | sed 's/,//g')
VERSION=$(cat package.json | grep version |  awk '{print $2}' | sed 's/"//g' | sed 's/,//g')
if [ "${ALIYUN_NODE_ENDPOINT}" != "" ]; then
  blocklet deploy .blocklet/bundle --endpoint ${ALIYUN_NODE_ENDPOINT} --access-key ${ALIYUN_NODE_ACCESS_KEY} --access-secret ${ALIYUN_NODE_ACCESS_SECRET} --skip-hooks
  if [ $? == 0 ]; then
    echo "deploy to ${ALIYUN_NODE_ENDPOINT} success"
    curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"${NAME} v${VERSION} was successfully deployed to ${ALIYUN_NODE_ENDPOINT}\"}" ${SLACK_WEBHOOK}
  else
    echo "deploy to ${ALIYUN_NODE_ENDPOINT} failed"
    curl -X POST -H 'Content-type: application/json' --data "{\"text\":\":x: Faild to deploy ${NAME} v${VERSION} to ${ALIYUN_NODE_ENDPOINT}\"}" ${SLACK_WEBHOOK}
  fi
fi
if [ "${AWS_NODE_ENDPOINT}" != "" ]; then
  blocklet deploy .blocklet/bundle --endpoint ${AWS_NODE_ENDPOINT} --access-key ${AWS_NODE_ACCESS_KEY} --access-secret ${AWS_NODE_ACCESS_SECRET} --skip-hooks
  if [ $? == 0 ]; then
    echo "deploy to ${AWS_NODE_ENDPOINT} success"
    curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"${NAME} v${VERSION} was successfully deployed to ${AWS_NODE_ENDPOINT}\"}" ${SLACK_WEBHOOK}
  else
    echo "deploy to ${AWS_NODE_ENDPOINT} failed"
    curl -X POST -H 'Content-type: application/json' --data "{\"text\":\":x: Faild to deploy ${NAME} v${VERSION} to ${AWS_NODE_ENDPOINT}\"}" ${SLACK_WEBHOOK}
  fi
fi

make deploy
