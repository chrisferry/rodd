# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

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
## Added
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
