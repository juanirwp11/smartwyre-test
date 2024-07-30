resource "azurerm_kubernetes_cluster" "main" {
  name                = "aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "aksdns"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "B2s"
    zones = ["3"]
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
    service_cidr   = "10.0.2.0/24"
    dns_service_ip = "10.0.2.10"
    docker_bridge_cidr = "172.17.0.1/16"
  }
}
