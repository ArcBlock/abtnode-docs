![ABT Node Documentation](https://www.arcblock.io/.netlify/functions/badge/?text=ABT%20Node%20Documentation)

## Getting Started

```shell
git clone git@github.com:ArcBlock/abtnode-docs.git
cd abtnode-docs
make init
```

Then create a config file `.env` in repo root directory with the following content:

```
GATSBY_ALGOLIA_APP_ID="FU81LCBN51"
GATSBY_ALGOLIA_ADMIN_KEY="this key is secret"
GATSBY_ALGOLIA_SEARCH_KEY="2e4d21878c80877e17a6f9c80722eaeb"
GATSBY_ALGOLIA_INDEX_NAME="forge-cli-abtnode"
```

Then compile and server docs from local:

```
make run
```

## Table of Contents

- [Deployment](./src/deployment)
  - [Bind domain with reverse proxy server](./src/deployment/bind-domain-with-reverse-proxy-server)
