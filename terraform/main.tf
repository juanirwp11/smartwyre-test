module "network" {
  source = "./modules/network"
  location = var.location
  resource_group_name = var.resource_group_name
}

module "acr" {
  source = "./modules/acr"
}

module "aks" {
  source = "./modules/aks"
  location = var.location
  resource_group_name = var.resource_group_name
}

output "kubeconfig" {
  value = module.aks.kubeconfig
  sensitive = true
}
