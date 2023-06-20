#
# Copyright 2023 Emmanuel Bergerat
#

# Created  on: #{CREATIONDATE}#
# Created  by: Emmanuel
# Modified on: 
# Modified by: 
# Overview:
#   This #{MODULEDISPLAYNAME}# module:
#   - ,
#   - .
#

# -
# - Generate name for the #{MODULEDISPLAYNAME}# Resource
# -
module "#{MODULECODE}#_name" {
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
  resource_type_code = "#{MODULECODE}#"
  max_length         = 90
  no_dashes          = false
  add_random         = var.add_random
  rnd_length         = var.rnd_length
}

# -
# - Create the #{MODULEDISPLAYNAME}# Resource
# -
resource "azurerm_resource_group" "this" {
  name     = module.#{MODULECODE}#_name.name
  location = module.#{MODULECODE}#_name.location

  tags = merge(module.#{MODULECODE}#_name.tags, var.additional_tags)
}

