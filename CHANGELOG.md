# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

<<<<<<< HEAD
## Unreleased
- after templates are rendered, `terraform fmt` is run.
=======
## [1.9.0]

### Removed
- `kubernetes.cluster_bytes_received` and `kubernetes.cluster_bytes_sent` monitors. Increased network traffic isn't usually a problem worth alerting on.
>>>>>>> master

## [1.8.2]
## Updated:
- added template definitions to the thresholds block of the monitors
- added per monitor default definitions

## [1.8.1]
### Fixed
- Fixed a typo in files/monitor.tf.jinja `evaluation_delay` variable name.

## [1.8.0]

### Removed
- `kubernetes.single_node_container_restarts` monitor. Frequently alerts during normal node replacement operations. Recently added `kubernetes.node_not_ready` monitor should cover host issues with less false alarms.

## [1.7.0]

### Updated
- [Switch to monitoring Pending pods instead of Waiting containers](https://github.com/reactiveops/rodd/pull/41)

### Fixed
- Test were dublicating logic and not using the correct Classes
- Added new test

## [1.6.1]
### Reverted
- cluster_network_errors reverted back to `kubernetes.network.rx_errors + kubernetes.network.tx_errors` as the metric `kubernetes.network_errors` is not
  available.

## [1.6.0]
### Removed
- kubernetes.datadog_agent_up monitor since Datadog doesn't handle disappearing nodes gracefully

## [1.5.4]
### Fixed
- bug where explicitly defined monitors were not added because they did not have a `source`
- issue where `./datadog/rodd-example.yml` was not being created as stated in the docs

## [1.5.1]
### Nothing

## [1.5.0]
### Added
- kubernetes.node_not_ready monitor


## [1.4.1]
## Added
- Dashboard for tuning resource utilization
## Fixed
- Tweaks to some alert thresholds to keep noise down
- Tweaks to the resource dashboard to make it more accurate


## [1.2.1]
## Fixed
- Removed redundant kubernetes.container_restart monitor.

## [1.2.0]
### Added
- GCP quota monitors


## [1.1.0]
### updated
- kubernetes.high_node_io_wait_time no longer filters out master nodes
- kubernetes.deploy_replica_alert filters by cluster

## [1.0.1]
### updated
- updated gcp.disk_throttled_read|write_ops monitors to monitor the percentage of throttle disk ops.

## [1.0.0]
### Updated
- GCP and AWS specific monitors separated out into their own directories
- update new_host_delay field for the datadog.agent.up monitor to 10 minutes

### Added
- GCP disk throttled read and write ops instance monitors

## [0.2.0]
### Updated
- Use burst iops percent monitor instead of absolute number
- Move the iops monitor out of node and into kubernetes group

### Fixed
- Don't try to process exceptions

### Added

## [0.1.0]
### Added
- PyPi upload
