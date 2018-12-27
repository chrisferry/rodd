resource "datadog_monitor" "test_containers_waiting_to_run" {
  # Required Arguments
  name               = "[test] Containers waiting to run"
  type               = "metric alert"

  message            = <<EOF
  {{#is_alert}}
There has been at least 1 container waiting to start for 30 minutes.
There are currently {{kubernetes_state.container.waiting}} containerswaiting to start.
  - Is something crash-looping?
  - Is autoscaling adding capacity where needed?
  - Is a secret or configmap missing?
{{/is_alert}}
{{^is_alert}}
Containers are no longer waiting.
{{/is_alert}}
${notifications}

  EOF
  query = "min(last_30m):sum:kubernetes_state.container.waiting{kubernetescluster:cluster_name,namespace:namespace_name} > 1"

  # Optional Arguments
  notify_no_data    = true
  no_data_timeframe = 41
  new_host_delay = 300
  thresholds {
    critical = 1
  }
  require_full_window = true
  tags = ["test", "reactiveops"]
  silenced = {}

}