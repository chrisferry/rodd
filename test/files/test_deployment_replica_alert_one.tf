resource "datadog_monitor" "test_deployment_replica_alert_one" {
  # Required Arguments
  name = "[test] Deployment replica alert one"
  type = "query alert"

  message = <<EOF
  {{#is_alert}}
Available replicas is currently 0 for {{deployment.name}}
{{/is_alert}}
{{^is_alert}}
Available replicas is no longer 0 for {{deployment.name}}
{{/is_alert}}
${notifications}

  EOF

  query = "max(last_10m):max:kubernetes_state.deployment.replicas_available{kubernetescluster:cluster_name,namespace:one} by {deployment} <= 0"

  # Optional Arguments
  new_host_delay = 300

  thresholds {
    critical = 0
  }

  include_tags = true
  tags         = ["test", "reactiveops"]
  silenced     = {}
}
