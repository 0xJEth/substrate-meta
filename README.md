<p align="center">
  <h3 align="center">Substrate Meta Repo</h3>
</p>

Meta repo for Substrate based blockchains for the W3F ecosystem including Polkadot and Kusama. Contains all associated repositories for Geometry Labs maintained code. 

#### [Status Page](https://status.icon.geometry.io) 

#### [Docs for downloading full archive copies of Kusama and Polkadot](docs/archive_sync.md)

### Sub-Repos

All sub-repos can be pulled locally running `make pull-repos`.

#### Terraform

| Module | Version | Build Status | 
| :--- | :---- |:---- | 
| [Node](https://github.com/geometry-labs/terraform-polkadot-aws-node) | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/terraform-polkadot-aws-node.svg?style=flat)]() | ![](https://github.com/geometry-labs/terraform-polkadot-aws-node/workflows/integration/badge.svg?branch=main) | 
| [Autoscaling Group](https://github.com/geometry-labs/terraform-polkadot-aws-asg) | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/terraform-polkadot-aws-asg.svg?style=flat)]() | ![](https://github.com/geometry-labs/terraform-polkadot-aws-asg/workflows/integration/badge.svg?branch=main) | 
| [Telemetry](https://github.com/geometry-labs/terraform-polkadot-aws-telemetry) | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/terraform-polkadot-aws-telemetry.svg?style=flat)]() | ![](https://github.com/geometry-labs/terraform-polkadot-aws-telemetry/workflows/integration/badge.svg?branch=main) | 
| [User Data](https://github.com/geometry-labs/terraform-polkadot-user-data) | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/terraform-polkadot-user-data.svg?style=flat)]() | ![](https://github.com/geometry-labs/terraform-polkadot-user-data/workflows/integration/badge.svg?branch=main) | 

[comment]: <> (| [Archive Cloudfront]&#40;https://github.com/geometry-labs/terraform-substrate-archive-cloudfront&#41; | [![GitHub Release]&#40;https://img.shields.io/github/release/geometry-labs/terraform-substrate-archive-cloudfront.svg?style=flat&#41;]&#40;&#41; | ![]&#40;https://github.com/geometry-labs/terraform-substrate-archive-cloudfront/workflows/integration/badge.svg?branch=main&#41; |)

#### Ansible 

| Role | Version | Build Status | 
| :--- | :---- |:---- | 
| [Base](https://github.com/geometry-labs/ansible-role-polkadot-base) | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/ansible-role-polkadot-base.svg?style=flat)]() | ![](https://github.com/geometry-labs/ansible-role-polkadot-base/workflows/galaxy-publish/badge.svg?branch=main) | 
| [Telemetry](https://github.com/geometry-labs/ansible-role-substrate-telemetry) | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/ansible-role-substrate-telemetry.svg?style=flat)]() | ![](https://github.com/geometry-labs/ansible-role-substrate-telemetry/workflows/galaxy-publish/badge.svg?branch=main) | 
| [Envoy](https://github.com/geometry-labs/ansible-role-substrate-connect-envoy-config) | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/ansible-role-substrate-connect-envoy-config.svg?style=flat)]() | ![](https://github.com/geometry-labs/ansible-role-substrate-connect-envoy-config/workflows/galaxy-publish/badge.svg?branch=main) | 
| [Truth](https://github.com/geometry-labs/ansible-role-polkadot-truth) | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/ansible-role-polkadot-truth.svg?style=flat)]() | ![](https://github.com/geometry-labs/ansible-role-polkadot-truth/workflows/galaxy-publish/badge.svg?branch=main) | 
| [Validator](https://github.com/geometry-labs/ansible-role-polkadot-validator) | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/ansible-role-polkadot-validator.svg?style=flat)]() | ![](https://github.com/geometry-labs/ansible-role-polkadot-validator/workflows/galaxy-publish/badge.svg?branch=main) | 
| [Library](https://github.com/geometry-labs/ansible-role-polkadot-library) | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/ansible-role-polkadot-library.svg?style=flat)]() | ![](https://github.com/geometry-labs/ansible-role-polkadot-library/workflows/galaxy-publish/badge.svg?branch=main) | 
| [Health Check](https://github.com/geometry-labs/ansible-role-polkadot-health-check) | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/ansible-role-polkadot-health-check.svg?style=flat)]() | ![](https://github.com/geometry-labs/ansible-role-polkadot-health-check/workflows/galaxy-publish/badge.svg?branch=main) | 

#### Services

| Service | Version | Build Status | 
| :--- | :---- |:---- | 
| [Status Page](https://github.com/geometry-labs/substrate-status-page) | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/substrate-status-page.svg?style=flat)]() | ![](https://github.com/geometry-labs/substrate-status-page/workflows/Uptime%20CI/badge.svg?branch=main) | 
| [Websocket Loggger](https://github.com/geometry-labs/websocket-logger) | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/websocket-logger.svg?style=flat)]() | ![](https://github.com/geometry-labs/websocket-logger/actions/workflows/release-ecr.yml/badge.svg) | 

