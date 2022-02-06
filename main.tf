resource "kubernetes_namespace" "this" {
  metadata {
	name = var.namespace
  }
}


#data "vault_generic_secret" "prometheus" {
#    path = "kv/prometheus_secrets"
#}

data "template_file" "prometheus_values" {
    template = file("/home/stefanaygul/terraform_minkube_helm/helm-charts/charts/prometheus/values.yaml")
}

resource "helm_release" "prometheus" {
  chart = "prometheus"
  name = "prometheus"
  namespace = var.namespace
  repository = "https://prometheus-community.github.io/helm-charts"
  values = [
    data.template_file.prometheus_values.rendered
  ]
}
