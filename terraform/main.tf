module "network" {
  source = "./modules/network"
}

module "acr" {
  source = "./modules/acr"
}

module "aks" {
  source = "./modules/aks"
}

output "kubeconfig" {
  value = module.aks.kubeconfig
  sensitive = true
}
