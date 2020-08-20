![ABT Node Documentation](https://www.arcblock.io/.netlify/functions/badge/?text=ABT%20Node%20Documentation)

## Getting Started

```shell
git clone git@github.com:ArcBlock/abtnode-docs.git
cd abtnode-docs
make init
```

> If you have trouble with make init, you can try `make redep` instead.

Then create a config file `.env` in repo root directory with the following content:

```shell
GATSBY_ALGOLIA_APP_ID="FU81LCBN51"
GATSBY_ALGOLIA_ADMIN_KEY="this key is secret"
GATSBY_ALGOLIA_SEARCH_KEY="2e4d21878c80877e17a6f9c80722eaeb"
GATSBY_ALGOLIA_INDEX_NAME="abtnode-docs"
```

Then compile and server docs from local:

```shell
make run
```

## Table of Contents

- [Introduction](./src/introduction)
  - [What is ABT Node?](./src/introduction/what-is-abt-node)
  - [How to get ABT Node?](./src/introduction/how-to-get-abtnode)
  - [Get your ABT Node Up and Running](./src/introduction/setup-your-abt-node)
  - [ABT Node Overview](./src/introduction/abtnode-overview)
- [Blocklet Marketplace](./src/marketplace)
  - [Find and install blocklet](./src/marketplace/find-and-install)
  - [Upgrade/downgrade blocklet](./src/marketplace/upgrade-downgrade)
- [Blocklet Management](./src/blocklet)
  - [Basic Operations](./src/blocklet/basic-operations)
  - [Blocklet Environments](./src/blocklet/environments)
  - [Core Blocklets](./src/blocklet/core-blocklets)
- [Router](./src/router)
  - [What is Router?](./src/router/what-is-router)
  - [Basic Router Usage](./src/router/basic-usage)
- [Production Deployment](./src/deployment)
  - [Production Best Practice](./src/deployment/best-practice)
  - [Deploy with AWS AMI](./src/deployment/form-aws-ami)
  - [Run behind Reverse Proxy](./src/deployment/behind-reverse-proxy)
- [Misc](./src/misc)
  - [Node Settings](./src/misc/node-settings)
  - [Member Management](./src/misc/member-management)
  - [GraphQL Console](./src/misc/graphql-console)
- [Developer Guide](./src/developer)
  - [Node Configuration](./src/developer/configuration)
  - [Storage Structure](./src/developer/storage-structure)
  - [Blocklet Specification](./src/developer/blocklet-spec)
  - [Create Static Blocklets](./src/developer/static-blocklets)
  - [Create DApp Blocklets](./src/developer/dapp-blocklets)
  - [Blocklet Hooks](./src/developer/blocklet-hooks)
  - [Bundle Blocklets](./src/developer/bundle-blocklets)
  - [Publish Blocklets](./src/developer/publish-blocklets)
  - [Blocklet Registry](./src/developer/blocklet-registry)
