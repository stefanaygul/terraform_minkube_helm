#provider "kubernetes" {
#  host = "https://192.168.49.2:8443"
#  client_certificate = file("/home/stefanaygul/.minikube/profiles/minikube/client.crt")
#  client_key = file("/home/stefanaygul/.minikube/profiles/minikube/client.key")
#  cluster_ca_certificate = file("/home/stefanaygul/.minikube/ca.crt")
#}

#provider "helm" {
#  kubernetes {
#    host = "https://192.168.49.2:8443"
#    client_certificate = file("/home/stefanaygul/.minikube/profiles/minikube/client.crt")
#    client_key = file("/home/stefanaygul/.minikube/profiles/minikube/client.key")
#    cluster_ca_certificate = file("/home/stefanaygul/.minikube/ca.crt")
#  }
#}


provider "helm" {
  kubernetes {
	config_path = pathexpand(var.kube_config)
  }
}

provider "kubernetes" {
  config_path = pathexpand(var.kube_config)
}
