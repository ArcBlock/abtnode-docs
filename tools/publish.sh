VERSION=$(cat version | awk '{$1=$1;print}')
echo "publish version ${VERSION}"

git config --local user.name "wangshijun"
git config --local user.email "wangshijun2010@gmail.com"

make release
npm config set '//registry.npmjs.org/:_authToken' "${NPM_TOKEN}"
npm install -g @abtnode/cli

echo "publishing abtnode docs blocklet..."
rm -rf public && rm -rf .cache
yarn build
rm -f www/*.map
NODE_ENV=production abtnode bundle && npm publish _blocklet --access=public