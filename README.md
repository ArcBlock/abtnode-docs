![ABT Node Documentation](https://www.arcblock.io/.netlify/functions/badge/?text=ABT%20Node%20Documentation)

## Getting Started

```shell
git clone git@github.com:ArcBlock/abtnode-docs.git
cd abtnode-docs
make init
```

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
  - [Setup your ABT Node](./src/introduction/setup-your-abt-node)
  - [ABT Node Overview](./src/introduction/abtnode-overview)
- [Blocklet marketplace](./src/blocklet-marketplace)
  - [Find and install blocklet](./src/blocklet-marketplace/find-and-install)
  - [Upgrade/downgrade blocklet](./src/blocklet-marketplace/upgrade-downgrade)
- [Blocklet Management](./src/blocklet-management)
  - [Basic Operations](./src/blocklet-management/basic-operations)
  - [Blocklet Environments](./src/blocklet-management/environments)
- [Router](./src/router)
  - [What is Router?](./src/router/what-is-router)
  - [Basic Router Usage](./src/router/basic-router-usage)
- [Production Deployment](./src/deployment)
  - [Production Best Practice](./src/deployment/production-best-practice)
  - [Run behind Revers Proxy](./src/deployment/bind-domain-with-reverse-proxy-server)
- [Misc](./src/misc)
  - [Node Settings](./src/router/node-settings)
  - [Member Management](./src/router/member-management)
  - [Storage Structure](./src/deployment/storage-structure)
