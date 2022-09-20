resource "fortimanager_object_firewall_address" "firewall_address" {
  color    = 0
  name     = "class-c"
  obj_type = "ip"
  subnet = [
    "192.168.0.0",
    "255.255.255.255",
  ]
  type = "ipmask"

}