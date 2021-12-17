variable "environment" {
    type = string
    description = "Environment: dev/stage/prods"
    defadefault = "dev"
}

variable "resource_group_name" {
    type = string
    description = "Name of the resource group"
    default = "hello-world"
}

variable "resource_group_location" {
    type = string
    default = "northeurope"
}