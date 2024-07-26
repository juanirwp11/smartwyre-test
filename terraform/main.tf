module "network" {
  source = "./modules/network"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "acr" {
  source = "./modules/acr"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "aks" {
  source = "./modules/aks"
  resource_group_name = var.resource_group_name
  location            = var.location
}

output "kubeconfig" {
  value     = module.aks.kubeconfig
  sensitive = true
}
