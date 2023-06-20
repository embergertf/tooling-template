#
# Copyright 2023 Emmanuel Bergerat
#

# Created  on: #{CREATIONDATE}#
# Created  by: Emmanuel
# Modified on: 
# Modified by: 
# Overview:
#   This #{MODULENAME}# module:
#   - ,
#   - .
#

# -
# - Generate name for the #{MODULENAME}# Resource
# -
module "rg_name" {
  # Terraform Cloud PMR use
  source  = "app.terraform.io/embergertf/base/azurerm"
  version = "~>3.0.0"

  name_override = var.name_override

  region_code     = var.region_code
  subsc_code      = var.subsc_code
  env             = var.env
  base_name       = var.base_name
  additional_name = var.additional_name
  iterator        = var.iterator
  owner           = var.owner

  # Resource Group specifics settings
  resource_type_code = #{ModuleCode}#
  max_length         = 90
  no_dashes          = false
  add_random         = var.add_random
  rnd_length         = var.rnd_length
}

# -
# - Create the #{MODULENAME}# Resource
# -
resource "azurerm_resource_group" "this" {
  name     = module.rg_name.name
  location = module.rg_name.location

  tags = merge(module.rg_name.tags, var.additional_tags)
}

