terraform {
  source = "."
}

include {
  path = find_in_parent_folders()
}

locals {
  vars = read_terragrunt_config(find_in_parent_folders("variables.hcl")).locals
}

inputs = {
  block_dump_bucket = "icon-block-dump-${local.vars.env}"
}
