resource "datadog_monitor" "test_increase_in_network_bytes_received" {
  # Required Arguments
  name = "[test] Increase in network bytes received"
  type = "metric alert"

  message = <<EOF
  {{#is_alert_recovery}}
Increase in network bytes in
{{/is_alert_recovery}}
${notifications}

  EOF

  query = "avg(last_15m):avg:kubernetes.network.rx_bytes{kubernetescluster:cluster_name} by {host} > 20000000"

  # Optional Arguments
  new_host_delay = 300

  thresholds {
    critical = 20000000
    warning  = 17500000
  }

  require_full_window = true
  tags                = ["test", "network", "reactiveops"]
  silenced            = {}
}
