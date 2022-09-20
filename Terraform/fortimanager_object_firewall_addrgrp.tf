resource "fortimanager_object_firewall_addrgrp" "firewall_addrgrp" {
  allow_routing = "disable"
  member        = ["class-c"]
  name          = "class-c-addrgrp4"
  depends_on = [
    fortimanager_object_firewall_address.firewall_address
  ]
}