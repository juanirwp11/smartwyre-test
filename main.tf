module "network" {
  source = "./modules/network"
  # Configuration variables
}

module "acr" {
  source = "./modules/acr"
  # Configuration variables
}

module "aks" {
  source = "./modules/aks"
  # Configuration variables
}

output "kubeconfig" {
  value = module.aks.kubeconfig
  sensitive = true
}
