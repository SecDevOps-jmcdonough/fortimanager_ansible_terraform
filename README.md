# FortiManager Ansible and Terraform

Examples of FortiManager Ansible and Terraform code.

When using Terraform there are several execution resources related to installing/updating packages.  The first time there is an `apply` the execution resources will work as expected. However, on subsequent `apply` operations the resource state will not have changed resulting in no activity.

For example, `fortimanager_securityconsole_install_package` will install a package to a device on the first `apply` but not on subsequent `apply` operations. To make the resource execute it must be **tainted**.
