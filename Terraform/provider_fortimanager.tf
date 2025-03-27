terraform {
  required_providers {
    fortimanager = {
      source = "fortinetdev/fortimanager"
    }
  }
  required_version = ">= 1.0.0"
}

provider "fortimanager" {
  hostname = var.hostname
  username = var.admin_username
  password = var.admin_password
  insecure = "true"

  scopetype = "adom"
  adom      = "FortiOS-76"
}
