
variable "location" {
  description = "Região onde os recursos serão criados"
  default     = "Brazil South"
}

variable "resource_group_name" {
  description = "Nome do Resource Group"
  default     = "RG-Lab-Infra"
}

variable "vnet_name" {
  description = "Nome da Virtual Network"
  default     = "VNET-LAB"
}

variable "subnet_prefixes" {
  description = "Prefixos de sub-rede"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
}

variable "subnet_names" {
  description = "Nomes das subnets"
  type        = list(string)
  default     = ["Subnet-App", "Subnet-AppGateway", "Subnet-FW", "Subnet-Management"]
}

variable "admin_username" {
  description = "Nome de usuário para as VMs"
  default     = "azureuser"
}

variable "admin_password" {
  description = "Senha de administrador das VMs"
  default     = "P@ssword1234!"
}
