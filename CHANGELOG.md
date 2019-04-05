# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [1.16.0]
### Added
- Added `cluster_tag` as a definition variable
- Added default `cluster_tag` == `kubernetescluster` to existing monitors and dashboards.

### Updated
- Updated all tests to include `cluster_tag`

## [1.15.0]

### Updated
- Using minimum oyaml 0.8 and PyYAML 5.0

### Fixed
- Definition names for kubernetes.pod_crashes were incorrect

### Added
- Added `pod_crashes_additional_filters` option for kubernetes.pod_crashes.

## [1.14.0]

### Updated
- Added new options for kubernetes.high_node_io_wait_time: `high_node_io_wait_time_additional_filters`, `high_node_io_wait_time_critical_threshold`, and `high_node_io_wait_time_warning_threshold`

- Updated `kubernetes.node_not_ready` monitor threshold.

### Fixed
- Fixed string type check for variable replacement in inline monitors

## [1.13.0]

### Added
- hpa error monitor

## [1.12.0]

### Updated

- Added `system_load_average_additional_filters` option for kubernetes.system_load_average_high.

### Fixed
* Order of definition precedence fixed (most to least): monitor, global, monitor default

## [1.11.0]

### Added

- Support for namespaced monitors.

### Updated

- Resource override functionality reworked to remove reliance on multiple file writes.
- Deploy replica and pod crash monitors to support multiple namespaces.

## [1.10.1]

### Added
- Run `terraform fmt` and `terraform validate` after terraform is generated.
- Add support for Downtimes

## [1.10.0]

### Updated
- `kubernets.cluster_cpu_usage_high` renamed to `kubernetes.system_load_average_high` to more closely match what is monitors
- `kubernetes.system_load_average_high` now uses `system.load.norm.5` to make it relavant regardless of node CPU capacity

## [1.9.0]

### Removed
- `kubernetes.cluster_bytes_received` and `kubernetes.cluster_bytes_sent` monitors. Increased network traffic isn't usually a problem worth alerting on.

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
