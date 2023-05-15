```bash
# https://docs.fedoraproject.org/en-US/epel/#_quickstart

root@kvm-01-guest10.lab.eng.rdu2.redhat.com# uname -a
Linux kvm-01-guest10.lab.eng.rdu2.redhat.com 5.14.0-315.el9.x86_64 #1 SMP PREEMPT_DYNAMIC Wed May 17 14:14:11 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux

root@kvm-01-guest10.lab.eng.rdu2.redhat.com# ls -l /etc/*release
-rw-r--r--. 1 root root 24 Apr  6 09:27 /etc/centos-release
lrwxrwxrwx. 1 root root 21 Apr  6 09:27 /etc/os-release -> ../usr/lib/os-release
lrwxrwxrwx. 1 root root 14 Apr  6 09:27 /etc/redhat-release -> centos-release
lrwxrwxrwx. 1 root root 14 Apr  6 09:27 /etc/system-release -> centos-release

root@kvm-01-guest10.lab.eng.rdu2.redhat.com# cat /etc/centos-release
CentOS Stream release 9

root@kvm-01-guest10.lab.eng.rdu2.redhat.com# cat /etc/os-release
NAME="CentOS Stream"
VERSION="9"
ID="centos"
ID_LIKE="rhel fedora"
VERSION_ID="9"
PLATFORM_ID="platform:el9"
PRETTY_NAME="CentOS Stream 9"
ANSI_COLOR="0;31"
LOGO="fedora-logo-icon"
CPE_NAME="cpe:/o:centos:centos:9"
HOME_URL="https://centos.org/"
BUG_REPORT_URL="https://bugzilla.redhat.com/"
REDHAT_SUPPORT_PRODUCT="Red Hat Enterprise Linux 9"
REDHAT_SUPPORT_PRODUCT_VERSION="CentOS Stream"

root@kvm-01-guest10.lab.eng.rdu2.redhat.com# cat /etc/redhat-release
CentOS Stream release 9

root@kvm-01-guest10.lab.eng.rdu2.redhat.com# cat /etc/system-release
CentOS Stream release 9


[root@kvm-01-guest10 ~]# rpm -q epel-release
package epel-release is not installed
[root@kvm-01-guest10 ~]# rpm -q epel-next-release
package epel-next-release is not installed
[root@kvm-01-guest10 ~]#
[root@kvm-01-guest10 ~]#
[root@kvm-01-guest10 ~]#
[root@kvm-01-guest10 ~]# dnf config-manager --set-enabled crb
[root@kvm-01-guest10 ~]# dnf -y install epel-release epel-next-release
CentOS Stream 9 - BaseOS                                                                                           60 kB/s | 8.1 kB     00:00
CentOS Stream 9 - AppStream                                                                                        64 kB/s | 8.2 kB     00:00
CentOS Stream 9 - CRB                                                                                              12 MB/s | 5.4 MB     00:00
Dependencies resolved.
==================================================================================================================================================
 Package                                  Architecture                  Version                        Repository                            Size
==================================================================================================================================================
Installing:
 epel-next-release                        noarch                        9-2.el9                        extras-common                        8.1 k
 epel-release                             noarch                        9-2.el9                        extras-common                         17 k

Transaction Summary
==================================================================================================================================================
Install  2 Packages

Total download size: 25 k
Installed size: 26 k
Downloading Packages:
(1/2): epel-next-release-9-2.el9.noarch.rpm                                                                       129 kB/s | 8.1 kB     00:00
(2/2): epel-release-9-2.el9.noarch.rpm                                                                            262 kB/s |  17 kB     00:00
--------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                              49 kB/s |  25 kB     00:00
CentOS Stream 9 - Extras packages                                                                                 2.1 MB/s | 2.1 kB     00:00
Importing GPG key 0x1D997668:
 Userid     : "CentOS Extras SIG (https://wiki.centos.org/SpecialInterestGroup) <security@centos.org>"
 Fingerprint: 363F C097 2F64 B699 AED3 968E 1FF6 A217 1D99 7668
 From       : /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-SIG-Extras-SHA512
Key imported successfully
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                          1/1
  Installing       : epel-release-9-2.el9.noarch                                                                                              1/2
  Installing       : epel-next-release-9-2.el9.noarch                                                                                         2/2
  Running scriptlet: epel-next-release-9-2.el9.noarch                                                                                         2/2
  Verifying        : epel-next-release-9-2.el9.noarch                                                                                         1/2
  Verifying        : epel-release-9-2.el9.noarch                                                                                              2/2

Installed:
  epel-next-release-9-2.el9.noarch                                           epel-release-9-2.el9.noarch

Complete!
[root@kvm-01-guest10 ~]# rpm -q epel-release
epel-release-9-2.el9.noarch
[root@kvm-01-guest10 ~]# rpm -q epel-next-release
epel-next-release-9-2.el9.noarch
[root@kvm-01-guest10 ~]# rpm -ql epel-release
/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-9
/etc/yum.repos.d/epel-testing.repo
/etc/yum.repos.d/epel.repo
/usr/lib/systemd/system-preset/90-epel.preset
/usr/share/licenses/epel-release
/usr/share/licenses/epel-release/GPL
[root@kvm-01-guest10 ~]# rpm -ql epel-next-release
/etc/yum.repos.d/epel-next-testing.repo
/etc/yum.repos.d/epel-next.repo
[root@kvm-01-guest10 ~]#
```
