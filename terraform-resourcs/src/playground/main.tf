# module "gke-clusters-nginx" {
#   source = "../modules/gke-cluster"
#   project = var.project
#   gke_cluster_setting = var.gke_clusters_nginx
# }

# module "gke-clusters-ambassador" {
#   source = "../modules/gke-cluster"
#   project = var.project
#   gke_cluster_setting = var.gke_clusters_ambassador
# }

module "gke-clusters-istio" {
  source = "../modules/gke-cluster"
  project = var.project
  gke_cluster_setting = var.gke_clusters_istio
}

