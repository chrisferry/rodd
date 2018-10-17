# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

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
