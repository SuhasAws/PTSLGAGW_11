terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.67.0"
    }
  }
}
provider "azurerm" {
  features{}
}

module "resource-group" {
    source = "./modules/ResourceGroup"
    resource-group-name = var.resource-group-name
    location = var.location
}

module "vnet" {
    source = "./modules/VirtualNetwork"
    vnet-name = var.vnet-name
    vnet-address-space = var.vnet-address-space
    resource-group-name = module.resource-group.resource-group-name
    location = module.resource-group.location
    vnet-subnet-name = var.vnet-subnet-name
    vnet-subnet-address_prefixes = var.vnet-subnet-address_prefixes

}

module "pip" {
    source = "./modules/LoadBalancer"
    resource-group-name = module.resource-group.resource-group-name
    pip-name            = var.pip-name
    location            = module.resource-group.location
    pip-allocation_method   = var.pip-allocation_method
    LB-name               = var.LB-name
    LB-FEIP-name          = var.LB-FEIP-name
    BEPool-name            = var.BEPool-name
    LBProbe-name            = var.LBProbe-name
    LBprobe-port            = var.LBprobe-port
    LBRule-name             = var.LBRule-name
    LBRule-protocol              = var.LBRule-protocol
    LBRule-frontend-port                  = var.LBRule-frontend-port
    LBRule-backend-port                 = var.LBRule-backend-port 
    NSG-name              = var.NSG-name
}

module "APGWSUBNT" {
    source = "./modules/ApplicationGateway"
    resource-group-name = module.resource-group.resource-group-name
    location = module.resource-group.location
    vnet-name = module.vnet.vnet-name
    APGWSUBNT-name = var.APGWSUBNT-name
    APGWSUBNT-address_prefixes = var.APGWSUBNT-address_prefixes
    pipAG-name = var.pipAG-name
    pipAG-allocation_method = var.pipAG-allocation_method
    pipAG-sku = var.pipAG-sku
    APGW-name = var.APGW-name
    APGW-sku-name = var.APGW-sku-name
    APGW-sku-tier = var.APGW-sku-tier
    APGW-sku-capacity = var.APGW-sku-capacity
    APGW-GIP-name = var.APGW-GIP-name
    APGW-FEPORT-name = var.APGW-FEPORT-name
    APGW-FEPORT-port = var.APGW-FEPORT-port
    APGW-FEIP-name = var.APGW-FEIP-name
    APGW-BEPOOL-name = var.APGW-BEPOOL-name
    APGW-BPST-name = var.APGW-BPST-name
    APGW-BPST-cookie_based_affinity = var.APGW-BPST-cookie_based_affinity
    APGW-BPST-port = var.APGW-BPST-port
    APGW-BPST-protocol = var.APGW-BPST-protocol
    APGW-BPST-request_timeout = var.APGW-BPST-request_timeout
    APGW-BPLS-name = var.APGW-BPLS-name
    APGW-BPLS-protocol = var.APGW-BPLS-protocol
    APGW-BPRR-name = var.APGW-BPRR-name
    APGW-BPRR-rule_type = var.APGW-BPRR-rule_type
    APGW-BPRR-priority = var.APGW-BPRR-priority
}

module "PTS-sb" {
  source = "./modules/PointToSiteVpn"
  resource-group-name = module.resource-group.resource-group-name
  location = module.resource-group.location
  vnet-name = module.vnet.vnet-name
  PTS-sb-name = var.PTS-sb-name 
  PTS-sb-address_prefixes = var.PTS-sb-address_prefixes
  PTS-LNGonpremise-name = var.PTS-LNGonpremise-name
  PTS-LNGonpremise-gateway_address = var.PTS-LNGonpremise-gateway_address
  PTS-LNGonpremise-address_space = var.PTS-LNGonpremise-address_space
  PTS-pip-name = var.PTS-pip-name
  PTS-pip-allocation_method = var.PTS-pip-allocation_method
  PTS-VNG-name = var.PTS-VNG-name
  PTS-VNG-type = var.PTS-VNG-type
  PTS-VNG-vpn_type = var.PTS-VNG-vpn_type 
  PTS-VNG-active_active = var.PTS-VNG-active_active
  PTS-VNG-enable_bgp = var.PTS-VNG-enable_bgp
  PTS-VNG-sku = var.PTS-VNG-sku
  PTS-VNG-ipc-private_ip_address_allocation = var.PTS-VNG-ipc-private_ip_address_allocation
  PTS-VNGC-name = var.PTS-VNGC-name
  PTS-VNGC-type = var.PTS-VNGC-type
  PTS-VNGC-shared_key = var.PTS-VNGC-shared_key 
}
