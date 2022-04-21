![Blocklet Server Documentation](https://www.arcblock.io/.netlify/functions/badge/?text=ABT%20Node%20Documentation)

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

### Tips

When you use Apple silicon, you may hit some issues, [see](https://github.com/ArcBlock/abtnode-docs/issues/126)

## Table of Contents

- [x] Introduction
  - [x] Blocklet Server Overview
  - [x] Blocklet Server Setup
  - [x] Blocklet Server Access
- [x] Blocklet Store
  - [x] What is Store?
  - [ ] Launch Blocklets
  - [ ] Setup Blocklets
- [ ] Blocklet Management
  - [x] Basic Operations
  - [ ] Domains & URLs
  - [ ] Components
  - [ ] Members
  - [ ] Passports
  - [x] Configuration
- Team
  - [x] Members
  - [ ] Passports
- Settings
  - [ ] Basic Settings
  - [ ] Access Keys
  - [ ] Domains & URLs
    - [ ] What is Router?
    - [ ] Basic Router Usage
  - [ ] SSL Certificates
  - [ ] Integrations
  - [ ] About
- [ ] DevOps Guide
  - [ ] Setup Blocklet Server
    - [ ] Production Best Practice
    - [ ] Deploy with AWS AMI
    - [ ] Run behind Reverse Proxy
  - [ ] Backup & Restore
  - [ ] Blocklet Server CLI
    - [x] init
    - [x] start
    - [x] status
    - [x] stop
    - [x] export
    - [ ] info
    - [ ] logs
- [ ] Developer Guide
  - [ ] Blocklet Spec
  - [ ] Blocklet Runtime
  - [ ] Blocklet Lifecycle
  - [ ] Blocklet Compose
  - [ ] Blocklet CLI
    - [ ] config: config blocklet cli
    - [ ] connect: connect to store and config blocklet cli automatically
    - [ ] init: from existing
    - [ ] create: templates, static, dapp
    - [ ] dev: install/start/remove/reset, test
    - [ ] exec
    - [ ] bundle: monorepo, webpack, zip
    - [ ] version
    - [ ] upload: bundle
    - [ ] deploy: local/remote
    - [ ] meta
  - [ ] Blocklet Publish
    - [ ] Logo and favicon
    - [ ] Title
    - [ ] Screenshots
    - [ ] Blocklet.md
  - [ ] Blocklet SDK
    - [ ] Auth Service
    - [ ] Notification
- [ ] FAQ
  - [ ] Mirrors for Downloads
  - [ ] Setup Dev Environment
  - [ ] Use Blocklet Server with Docker

Other topics that developers should known when develop blocklets.

- [ ] DID Connect
  - [ ] Overview
  - [ ] Backend
  - [ ] Frontend
- [ ] OCAP SDK
  - [ ] Getting Started
  - [ ] Read Data
  - [ ] Send Transaction
