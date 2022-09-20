resource "fortimanager_securityconsole_install_package" "install_package" {
  fmgadom = "FortiOS-72"
  flags   = ["none"]
  pkg     = fortimanager_packages_pkg.packages_pkg.name

  scope {
    name = "sgate"
    vdom = "root"
  }
}