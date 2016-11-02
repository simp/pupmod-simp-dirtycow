# Checks the kernel version (using a fact) and determines
# if it's a version vulnerable to dirtycow
#
# @author Ralph Wright <rwright@onxypoint.com>
#
class dirtycow {
  $el6_patched_kernel = '2.6.32-642.6.2'
  $el7_patched_kernel = '3.10.0-327.36.3'
  $_kernel_parts=split($::kernelrelease,'\.')
  $_kernel_full_version=inline_template("<%= _kernel_parts[0..-3].join('.') %>")

  if ($::operatingsystemmajrelease == 6) and (versioncmp($_kernel_full_version, $el6_patched_kernel) < 0) {
    notify {"You are running a kernel version ${::kernelrelease} which vulnerable to Dirty Cow (CVE-2016-5195)":}
  }

  if ($::operatingsystemmajrelease == 7) and (versioncmp($_kernel_full_version, $el7_patched_kernel) < 0) {
    notify {"You are running a kernel version ${::kernelrelease} which vulnerable to Dirty Cow (CVE-2016-5195)":}
  }
}
