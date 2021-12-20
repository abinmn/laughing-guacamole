variable "environment" {
  type        = string
  description = "Environment: dev/stage/prods"
  default     = "dev"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
  default     = "hello-world"
}

variable "resource_group_location" {
  type    = string
  default = "northeurope"
}

variable "hello_world_image_name" {
  type        = string
  description = "Image name of hello-world web app built with packer"
  default     = "hello-world"
}

variable "hello_world_vm_username" {
  type        = string
  description = "Username for hello_world_vm"
  sensitive   = true
}

variable "hello_world_vm_ssh_public_key" {
  type        = string
  description = "Public Key for hello_world_vm"
}

variable "ssh_whitelist_ip" {
  type        = string
  description = "IP address with permission to ssh the VM"
}