#
# Copyright 2023 Emmanuel Bergerat
#

# -
# Required Variables
# -
variable "region_code" {
  type        = string
  description = "(Required) Resource region code. Must be compatible with base module. Example: `cac`."
}

# -
# Optional Variables
# -
variable "name_override" {
  type        = string
  description = "(Optional) Full name to override all the name generation logic. Example: 'biglittletest' will generate the resource group name \"'rg-biglittletest'\"."
  default     = null
}
variable "subsc_code" {
  type        = string
  description = "(Optional) Subscription code or abbreviation. Example: `azint`."
  default     = null
}
variable "env" {
  type        = string
  description = "(Optional) Environment code. Example: `test`. <br></br>&#8226; Value of `env` examples can be: `[nonprod,prod,core,int,uat,stage,dev,test]`."
  default     = null
}
variable "base_name" {
  type        = string
  description = "(Optional) Resource \"base\" name. Example: `aks`."
  default     = null
}
variable "additional_name" {
  type        = string
  description = "(Optional) Additional suffix to create resource uniqueness. It will be separated by a `'-'` from the \"name's generated\" suffix. Example: `lan1`."
  default     = null
}
variable "iterator" {
  type        = string
  description = "(Optional) Iterator to create resource uniqueness. It will be separated by a `'-'` from the \"name's generated + additional_name\" concatenation. Example: `001`."
  default     = null
}
variable "owner" {
  type        = string
  description = "(Optional) Deployed resources owner."
  default     = null
}
variable "additional_tags" {
  description = "(Optional) Additional tags for the Resource Group."
  type        = map(string)
  default     = null
}
