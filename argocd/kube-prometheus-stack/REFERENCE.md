# kube-prometheus-stack

![Version: 0](https://img.shields.io/badge/Version-0-informational?style=flat-square)

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://prometheus-community.github.io/helm-charts | kube-prometheus-stack | 13.10.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| kube-prometheus-stack.grafana.plugins[0] | string | `"grafana-piechart-panel"` |  |
| kube-prometheus-stack.grafana.sidecar.dashboards.searchNamespace | string | `"ALL"` |  |
| kube-prometheus-stack.grafana.sidecar.datasources.searchNamespace | string | `"ALL"` |  |
| kube-prometheus-stack.kubeControllerManager.enabled | bool | `false` |  |
| kube-prometheus-stack.kubeEtcd.enabled | bool | `false` |  |
| kube-prometheus-stack.kubeProxy.enabled | bool | `false` |  |
| kube-prometheus-stack.kubeScheduler.enabled | bool | `false` |  |
| kube-prometheus-stack.prometheus.additionalPodMonitors[0].jobLabel | string | `"traefik"` |  |
| kube-prometheus-stack.prometheus.additionalPodMonitors[0].name | string | `"traefik"` |  |
| kube-prometheus-stack.prometheus.additionalPodMonitors[0].namespaceSelector.any | bool | `true` |  |
| kube-prometheus-stack.prometheus.additionalPodMonitors[0].podMetricsEndpoints[0].path | string | `"/metrics"` |  |
| kube-prometheus-stack.prometheus.additionalPodMonitors[0].podMetricsEndpoints[0].port | string | `"traefik"` |  |
| kube-prometheus-stack.prometheus.additionalPodMonitors[0].podMetricsEndpoints[0].scheme | string | `"http"` |  |
| kube-prometheus-stack.prometheus.additionalPodMonitors[0].selector.matchLabels."app.kubernetes.io/instance" | string | `"traefik"` |  |
| kube-prometheus-stack.prometheus.additionalPodMonitors[0].selector.matchLabels."app.kubernetes.io/name" | string | `"traefik"` |  |
| kube-prometheus-stack.prometheus.prometheusSpec.podMonitorSelectorNilUsesHelmValues | bool | `false` |  |
| kube-prometheus-stack.prometheus.prometheusSpec.ruleSelectorNilUsesHelmValues | bool | `false` |  |
| kube-prometheus-stack.prometheus.prometheusSpec.serviceMonitorSelectorNilUsesHelmValues | bool | `false` |  |
| kube-prometheus-stack.prometheus.prometheusSpec.thanos.image | string | `"quay.io/thanos/thanos:v0.15.0"` |  |
| kube-prometheus-stack.prometheus.prometheusSpec.thanos.version | string | `"v0.15.0"` |  |
| kube-prometheus-stack.prometheusOperator.admissionWebhooks.enabled | bool | `false` |  |
| kube-prometheus-stack.prometheusOperator.manageCrds | bool | `false` |  |
| kube-prometheus-stack.prometheusOperator.tls.enabled | bool | `false` |  |
| kube-prometheus-stack.prometheusOperator.tlsProxy.enabled | bool | `false` |  |
| kube-prometheus-stack.thanosObjectStorageConfig | string | `nil` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)