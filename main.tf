resource "kubernetes_namespace" "ns" {
 count = var.enabled ? 1 : 0
 metadata {
  name        = var.namespace
  annotations = var.annotations
  labels      = var.labels
 }
}