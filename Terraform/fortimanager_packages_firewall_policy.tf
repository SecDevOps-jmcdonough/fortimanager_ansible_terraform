resource "fortimanager_packages_firewall_policy" "firewall_policy" {
  action                = "accept"
  anti_replay           = "enable"
  block_notification    = "disable"
  captive_portal_exempt = "disable"
  delay_tcp_npu_session = "disable"
  diffserv_forward      = "disable"
  diffserv_reverse      = "disable"
  dsri                  = "disable"
  dstaddr               = ["all"]
  dstaddr_negate        = "disable"
  dstintf               = ["any"]
  email_collect         = "disable"
  geoip_anycast         = "disable"
  geoip_match           = "physical-location"
  internet_service      = "disable"
  internet_service_src  = "disable"
  logtraffic            = "all"
  logtraffic_start      = "disable"
  match_vip             = "disable"
  match_vip_only        = "disable"
  name                  = "policy2"
  natip = [
    "1.0.0.1",
    "255.255.255.255",
  ]
  np_acceleration         = "enable"
  ntlm_enabled_browsers   = []
  permit_any_host         = "disable"
  pkg                     = fortimanager_packages_pkg.packages_pkg.name
  policyid                = 146
  profile_type            = "single"
  radius_mac_auth_bypass  = "disable"
  reputation_minimum      = 0
  rtp_nat                 = "disable"
  schedule                = "always"
  schedule_timeout        = "disable"
  send_deny_packet        = "disable"
  service                 = ["ALL"]
  service_negate          = "disable"
  session_ttl             = "0"
  srcaddr                 = [fortimanager_object_firewall_addrgrp.firewall_addrgrp.name]
  srcaddr_negate          = "disable"
  srcintf                 = ["any"]
  status                  = "enable"
  tcp_mss_receiver        = 0
  tcp_mss_sender          = 0
  tcp_session_without_syn = "disable"
  tos                     = "0x00"
  tos_mask                = "0x00"
  tos_negate              = "disable"
  vlan_cos_fwd            = 255
  vlan_cos_rev            = 255
  wccp                    = "disable"
}