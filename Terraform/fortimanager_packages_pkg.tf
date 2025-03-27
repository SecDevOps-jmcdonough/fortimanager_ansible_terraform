resource "fortimanager_packages_pkg" "packages_pkg" {
  name = "FG-Terraform"
  type = "pkg"

  scopemember {
    name = "sgate"
    vdom = "FortiOS-76"
  }
}