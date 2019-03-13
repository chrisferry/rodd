# List of Monitor Families and Monitors;

* AWS:
    * [Burst IOPS](/pentagon_datadog/monitors/aws/burst_iops.yml)
        * Required Definitions:
            * `environment`
            * `cluster`
            * `notifications`
        * Optional Definitions: n/a

* Elasticsearch:
    * [Cluster State](/pentagon_datadog/monitors/elasticsearch/cluster_state.yml)
        * Required Definitions:
            * `environment`
            * `elasticsearchdomain`
            * `notifications`
        * Optional Definitions: n/a
    * [Low Disk Space](/pentagon_datadog/monitors/elasticsearch/low_disk_space.yml)
        * Required Definitions:
            * `environment`
            * `elasticsearchdomain`
            * `notifications`
        * Optional Definitions: n/a

* GCP:
    * [Disk Throttled Read Ops](/pentagon_datadog/monitors/gcp/disk_throttled_read_ops.yml)
        * Required Definitions:
            * `environment`
            * `cluster`
            * `notifications`
        * Optional Definitions: n/a
    * [Disk Throttled Write Ops](/pentagon_datadog/monitors/gcp/disk_throttled_write_ops.yml)
        * Required Definitions:
            * `environment`
            * `cluster`
            * `notifications`
        * Optional Definitions: n/a

* GCP Quotas:
    * [Backend Services Quota](/pentagon_datadog/monitors/gcp-quotas/backend_services_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Buckets Quota](/pentagon_datadog/monitors/gcp-quotas/buckets_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a    
    * [External Addresses Quota](/pentagon_datadog/monitors/gcp-quotas/external_addresses_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Firewall Quota](/pentagon_datadog/monitors/gcp-quotas/firewall_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Forwarding Rules Quota](/pentagon_datadog/monitors/gcp-quotas/forwarding_rules_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Health Checks Quota.yml](/pentagon_datadog/monitors/gcp-quotas/health_checks_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [HTTP Proxy Quota.yml](/pentagon_datadog/monitors/gcp-quotas/http_proxy_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [HTTPS Proxy Quota.yml](/pentagon_datadog/monitors/gcp-quotas/https_proxy_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Images Quota.yml](/pentagon_datadog/monitors/gcp-quotas/images_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Interconnects Quota](/pentagon_datadog/monitors/gcp-quotas/interconnects_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Internal Address Quota.yml](/pentagon_datadog/monitors/gcp-quotas/internal_address_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Network Quota](/pentagon_datadog/monitors/gcp-quotas/network_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Routers Quota](/pentagon_datadog/monitors/gcp-quotas/routers_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Routes Quota](/pentagon_datadog/monitors/gcp-quotas/routes_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Security Policy Rules Quota.yml](/pentagon_datadog/monitors/gcp-quotas/security_policy_rules_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Snapshots Quota](/pentagon_datadog/monitors/gcp-quotas/snapshots_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [SSL Certs Quota.yml](/pentagon_datadog/monitors/gcp-quotas/ssl_certs_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Static Address Region Quota](/pentagon_datadog/monitors/gcp-quotas/static_address_region_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Static Addresses Project Quota](/pentagon_datadog/monitors/gcp-quotas/static_addresses_project_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Subnetworks Quota](/pentagon_datadog/monitors/gcp-quotas/subnetworks_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Target Instances Quota](/pentagon_datadog/monitors/gcp-quotas/target_instances_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Target Pools Quota](/pentagon_datadog/monitors/gcp-quotas/target_pools_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [URL Maps Quota](/pentagon_datadog/monitors/gcp-quotas/url_maps_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [VPN Gateway Quota](/pentagon_datadog/monitors/gcp-quotas/vpn_gateway_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [VPN Tunnels Quota](/pentagon_datadog/monitors/gcp-quotas/vpn_tunnels_quota.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a

* Kubernetes:
    * [Cluster Bytes Received](/pentagon_datadog/monitors/kubernetes/cluster_bytes_received.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
            * `cluster`
        * Optional Definitions:
            * `cluster_bytes_received_critical_threshold`: 20000000
            * `cluster_bytes_received_warning_threshold`: 17500000
    * [Cluster Bytes Sent](/pentagon_datadog/monitors/kubernetes/cluster_bytes_sent.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
            * `cluster`
        * Optional Definitions:
            * `cluster_bytes_sent_critical_threshold`: 20000000
            * `cluster_bytes_sent_warning_threshold`: 17500000
    * [Cluster CPU Usage High](/pentagon_datadog/monitors/kubernetes/cluster_cpu_usage_high.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
            * `cluster`
        * Optional Definitions:
            * `cluster_cpu_usage_high_critical_threshold`: 7
            * `cluster_cpu_usage_high_warning_threshold`: 5
    * [Cluster Disk Usage High](/pentagon_datadog/monitors/kubernetes/cluster_disk_usage_high.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
            * `cluster`
        * Optional Definitions:
            * `cluster_disk_usage_high_critical_threshold`: 90
            * `cluster_disk_usage_high_warning_threshold`: 80
            * `cluster_disk_usage_high_critical_recovery_threshold`: 75
            * `cluster_disk_usage_high_warning_recovery_threshold`: 85
    * [Cluster Memory](/pentagon_datadog/monitors/kubernetes/cluster_memory.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
            * `cluster`
        * Optional Definitions:
            * `cluster_memory_critical_threshold`: 0.1
            * `cluster_memory_critical_warning`: 0.15
    * [Cluster Network Errors](/pentagon_datadog/monitors/kubernetes/cluster_network_errors.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
            * `cluster`
        * Optional Definitions:
            * `cluster_network_errors_critical_threshold`: 10
            * `cluster_network_errors_warning_threshold`: 5
    * [Deploy Replica Alert](/pentagon_datadog/monitors/kubernetes/deploy_replica_alert.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
            * `cluster`
            * `namespace`
        * Optional Definitions:
            * `deploy_replica_alert_critical_threshold`: 0
    * [High Node IO Wait Time](/pentagon_datadog/monitors/kubernetes/high_node_io_wait_time.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
            * `cluster`
        * Optional Definitions: n/a
    * [Kubelet Health](/pentagon_datadog/monitors/kubernetes/kubelet_health.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
            * `cluster`
        * Optional Definitions: n/a
    * [Kubesystem Crashes](/pentagon_datadog/monitors/kubernetes/kubesystem_crashes.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
            * `cluster`
        * Optional Definitions:
            * `kubesystem_crashes_critical_threshold`: 1
    * [Node Not Ready](/pentagon_datadog/monitors/kubernetes/node_not_ready.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
            * `cluster`
        * Optional Definitions:
            * `node_not_ready_critical_threshold`: 8
            * `node_not_ready_warning_threshold` 3
            * `node_not_ready_ok_threshold`: 2
    * [NTP](/pentagon_datadog/monitors/kubernetes/ntp.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
            * `cluster`
        * Optional Definitions: n/a
    * [Pods Pending](/pentagon_datadog/monitors/kubernetes/pods_pending.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
            * `cluster`
        * Optional Definitions:
            * `pods_pending_critical_threshold`: 1
    * [HPA Errors](/pentagon_datadog/monitors/kubernetes/hpa_failure.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
            * `cluster`
        * Optional Definitions:
            * `hpa_failure_critical_threshold`: 200

* RDS:
    * [Burst IOPs](/pentagon_datadog/monitors/rds/burst_iops.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Memory Low](/pentagon_datadog/monitors/rds/memory_low.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [RDS Read Latency](/pentagon_datadog/monitors/rds/rds_read_latency.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
    * [Storage Space](/pentagon_datadog/monitors/rds/storage_space.yml)
        * Required Definitions:
            * `environment`
            * `notifications`
        * Optional Definitions: n/a
