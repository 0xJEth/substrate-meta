<p align="center">
  <h3 align="center">Substrate Meta Repo</h3>
</p>

Meta repo for Substrate based blockchains for the W3F ecosystem including Polkadot and Kusama. Contains all associated repositories for Geometry Labs maintained code. 

[//]: # (#### [Status Page]&#40;https://status.icon.geometry.io&#41; )

#### Downloading a copy of the archive databases

A [shell script](sync/archive_download.sh) is provided in the [sync](sync/) folder of this repo.
To use the script, just download and run:

```shell
./archive_download.sh <network> <destination_path>
```

Where `network` is either `polkadot` or `kusama`, and `destination_path` is the absolute path for the download (e.g. `/data/chains/polkadot/db/full/`)

Prior to using, you must have installed [aria2c](https://aria2.github.io/).

### Monitoring

Prometheus [rule files](prometheus/rules.yaml) and [scrape configurations](prometheus/scrape-configs.yaml) are available in the [prometheus folder](prometheus).

### Sub-Repos

All sub-repos can be pulled locally running `make pull-repos`.

#### Terraform

| Module | Version                                                                                                                              | Build Status                                                                                                            | 
|:---------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------------------| 
| [Node](https://github.com/geometry-labs/terraform-polkadot-aws-node)                               | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/terraform-polkadot-aws-node.svg?style=flat)]()                | ![](https://github.com/geometry-labs/terraform-polkadot-aws-node/workflows/integration/badge.svg?branch=main)           | 
| [Autoscaling Group](https://github.com/geometry-labs/terraform-polkadot-aws-asg)                   | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/terraform-polkadot-aws-asg.svg?style=flat)]()                 | ![](https://github.com/geometry-labs/terraform-polkadot-aws-asg/workflows/integration/badge.svg?branch=main)            | 
| [Telemetry](https://github.com/geometry-labs/terraform-polkadot-aws-telemetry)                     | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/terraform-polkadot-aws-telemetry.svg?style=flat)]()           | ![](https://github.com/geometry-labs/terraform-polkadot-aws-telemetry/workflows/integration/badge.svg?branch=main)      | 
| [User Data](https://github.com/geometry-labs/terraform-polkadot-user-data)                         | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/terraform-polkadot-user-data.svg?style=flat)]()               | ![](https://github.com/geometry-labs/terraform-polkadot-user-data/workflows/integration/badge.svg?branch=main)          | 
| [Cloudwatch Exporter](https://github.com/geometry-labs/terraform-polkadot-eks-cloudwatch-exporter) | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/terraform-polkadot-eks-cloudwatch-exporter.svg?style=flat)]() |      |
| [Archive Cloudfront](https://github.com/geometry-labs/terraform-substrate-archive-cloudfront)      | [![GitHub Release](https://img.shields.io/github/release/geometry-labs/terraform-substrate-archive-cloudfront.svg?style=flat)]()     | |

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

### License

[Apache 2.0](LICENSE)
