variable "location" {
  type        = string
  description = "description"
  default     = "uksouth"
}

variable "rg_name" {
  type        = string
  description = "description"
}

variable "name" {
  type        = string
  description = "name"
}


variable "admin_password" {
    type = string
    sensitive = true  
}

variable "administrator_login" {
    type = string  
}
