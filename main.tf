resource "helm_release" "jenkins" {
  name       = "jenkins"
  namespace  = kubernetes_namespace.jenkins.metadata[0].name
  repository = "https://charts.jenkins.io"
  chart      = "jenkins"
  version    = ""  # replace with the desired version
  
  set {
    name  = "controller.serviceType"
    value = "LoadBalancer"
  }

  # Add more configurations as needed
}
resource "kubernetes_namespace" "jenkins" {
  metadata {
    name = "jenkins"
  }
}