variable "resource-group-name" {
    type = string
    description = "Resource Group Name"
}

variable "location" {
    type = string
    description = "Location for deployment"
}

variable "vnet-name" {
    type = string
    description = "Virtual Network Name"
}

variable "vnet-address-space" {
    type = list(string)
    description = "Address space of virtual network"
}
variable "vnet-subnet-name" {
    type = string
    description = "Name of vnet subnet"
}

variable "vnet-subnet-address_prefixes" {
    type = list(string)
    description = "Address prefix of vnet subnet"
}

variable "pip-name" {
    type = string
    description = "Public IP name for Load Balancer"
}

variable "pip-allocation_method" {
    type = string
    description = "public IP allocation method"
}

variable "LB-name" {
    type = string
    description = "Name of Load Balancer"
}

variable "LB-FEIP-name" {
    type = string
    description = "Name of Front end IP"
}

variable "BEPool-name" {
    type = string
    description = "Name of Backend Pool"
}

variable "LBProbe-name" {
    type = string
    description = "Name of Probe"
}

variable "LBprobe-port" {
    type = number
    description = "Port number of Probe"
}

variable "LBRule-name" {
    type = string
    description = "Name of LB Rule"
}

variable "LBRule-protocol" {
    type = string
    description = "Protocol of LB Rule"
}

variable "LBRule-frontend-port" {
    type = number
    description = "port number of frontend"
}

variable "LBRule-backend-port" {
    type = number
    description = "port number of backend"
}

variable "frontend_ip_configuration_name" {
    type = string
    description = "Front End IP Name"
}

variable "NSG-name" {
    type = string
    description = "Network Security Group Name"
}

variable "APGWSUBNT-name" {
    type = string
    description = "Name of Subnet"
}

variable "APGWSUBNT-address_prefixes" {
    type = list(string)
    description = "address prefix of subnet"
}
variable "pipAG-name" {
    type = string
    description = "Name of Public IP"
}
variable "pipAG-allocation_method" {
    type = string
    description = "Allocation method of public ip"
}
variable "pipAG-sku" {
    type = string
    description = "sku of public ip"
}
variable "APGW-name" {
    type = string
    description = "name of application gateway"
}
variable "APGW-sku-name" {
    type = string
    description = "sku name of application gateway"
}

variable "APGW-sku-tier" {
    type = string
    description = "tier of application gateway"
}
variable "APGW-sku-capacity" {
    type = number
    description = "capacity of sku"
}
variable "APGW-GIP-name" {
    type = string
    description = "name of gateway ip configuration"
}
variable "APGW-FEPORT-name" {
    type = string
    description = "name of frontendport"
}
variable "APGW-FEPORT-port" {
    type = number
    description = "port number of frontend port"
}
variable "APGW-FEIP-name" {
    type = string
    description = "name of frontend ip configuration"
}
variable "APGW-BEPOOL-name" {
    type = string
    description = "name of backend address pool"
}
variable "APGW-BPST-name" {
    type = string
    description = "name of backend http settings"
}
variable "APGW-BPST-cookie_based_affinity" {
    type = string
    description = "= cookie based affinity"
}
variable "APGW-BPST-port" {
    type = number
    description = "port number of backend http settings"
}
variable "APGW-BPST-protocol" {
    type = string
    description = "protocol of backend http settings"
}
variable "APGW-BPST-request_timeout" {
    type = number
    description = "request timeout number"
}
variable "APGW-BPLS-name" {
    type = string
    description = "name of backend http listener"
}
variable "APGW-BPLS-protocol" {
    type = string
    description = "protocol of backend http listener"
}
variable "APGW-BPRR-name" {
    type = string
    description = "name of backend request routing rule"
}
variable "APGW-BPRR-rule_type" {
    type = string
    description = "rule type of backend request routing rule"
}
variable "APGW-BPRR-priority" {
    type = number
    description = "priority of backend request routing rule"
}

variable "PTS-sb-name" {
    type = string
    description = "point to site subnet name"
}
variable "PTS-sb-address_prefixes" {
    type = list(string)
    description = "Point to site subnet address prefix"
}
variable "PTS-LNGonpremise-name" {
    type = string
    description = "Point to site local network gateway name"
}
variable "PTS-LNGonpremise-gateway_address" {
    type = string
    description = "Local network gateway address"
}
variable "PTS-LNGonpremise-address_space" {
    description = "local network gateway address space"
}
variable "PTS-pip-name" {
    type = string
    description = "Point to site public ip name"
}
variable "PTS-pip-allocation_method" {
    type = string
    description = "Point to site pubic ip allocation method"
}
variable "PTS-VNG-name" {
    type = string
    description = "Point to site virtual network gateway name"
}
variable "PTS-VNG-type" {
    type = string
    description = "Point to site virtual network gateway type"
}
variable "PTS-VNG-vpn_type" {
    type = string
    description = "Point to site virtual network vpn type"
}
variable "PTS-VNG-active_active" {
    type = string
    description = "Point to site vpn active active"
}
variable "PTS-VNG-enable_bgp" {
    type = string
    description = "Point to site virtual gateway bgp enable option"
}
variable "PTS-VNG-sku" {
    type = string
    description = "Point to site Virtual network gateway sku type"
}
variable "PTS-VNG-ipc-private_ip_address_allocation" {
    type = string
    description = "Dynamic"
}
variable "PTS-VNGC-name" {
    type = string
    description = "Point to site virtual network gateway connection name"
}
variable "PTS-VNGC-type" {
    type = string
    description = "Point to site virtual network gateway connection type"
}
variable "PTS-VNGC-shared_key" {
    type = string
    description = "Point to site Virtual network gateway shared key"
}

