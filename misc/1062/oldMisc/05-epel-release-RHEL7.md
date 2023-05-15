```bash
# https://docs.fedoraproject.org/en-US/epel/#_quickstart


root@kvm-01-guest02.lab.eng.brq2.redhat.com# uname -a
Linux kvm-01-guest02.lab.eng.brq2.redhat.com 3.10.0-1160.91.1.el7.x86_64 #1 SMP Fri Apr 21 19:09:48 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux

root@kvm-01-guest02.lab.eng.brq2.redhat.com# ls -l /etc/*release
-rw-r--r--. 1 root root 557 Sep  9  2020 /etc/os-release
-rw-r--r--. 1 root root  57 Sep  9  2020 /etc/redhat-release
lrwxrwxrwx. 1 root root  14 May 22 08:06 /etc/system-release -> redhat-release

root@kvm-01-guest02.lab.eng.brq2.redhat.com# cat /etc/os-release
NAME="Red Hat Enterprise Linux Workstation"
VERSION="7.9 (Maipo)"
ID="rhel"
ID_LIKE="fedora"
VARIANT="Workstation"
VARIANT_ID="workstation"
VERSION_ID="7.9"
PRETTY_NAME="Red Hat Enterprise Linux Workstation 7.9 (Maipo)"
ANSI_COLOR="0;31"
CPE_NAME="cpe:/o:redhat:enterprise_linux:7.9:GA:workstation"
HOME_URL="https://www.redhat.com/"
BUG_REPORT_URL="https://bugzilla.redhat.com/"

REDHAT_BUGZILLA_PRODUCT="Red Hat Enterprise Linux 7"
REDHAT_BUGZILLA_PRODUCT_VERSION=7.9
REDHAT_SUPPORT_PRODUCT="Red Hat Enterprise Linux"
REDHAT_SUPPORT_PRODUCT_VERSION="7.9"

root@kvm-01-guest02.lab.eng.brq2.redhat.com# cat /etc/redhat-release
Red Hat Enterprise Linux Workstation release 7.9 (Maipo)

root@kvm-01-guest02.lab.eng.brq2.redhat.com# cat /etc/system-release
Red Hat Enterprise Linux Workstation release 7.9 (Maipo)


[root@kvm-01-guest02 ~]# rpm -q epel-release
package epel-release is not installed
[root@kvm-01-guest02 ~]# subscription-manager repos --enable rhel-*-optional-rpms \
>                            --enable rhel-*-extras-rpms \
>                            --enable rhel-ha-for-rhel-*-server-rpms
This system has no repositories available through subscriptions.
[root@kvm-01-guest02 ~]# yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
Loaded plugins: product-id, search-disabled-repos, subscription-manager

This system is not registered with an entitlement server. You can use subscription-manager to register.

epel-release-latest-7.noarch.rpm                                                                                           |  15 kB  00:00:00     
Examining /var/tmp/yum-root-2AVx8G/epel-release-latest-7.noarch.rpm: epel-release-7-14.noarch
Marking /var/tmp/yum-root-2AVx8G/epel-release-latest-7.noarch.rpm to be installed
Resolving Dependencies
--> Running transaction check
---> Package epel-release.noarch 0:7-14 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

==================================================================================================================================================
 Package                           Arch                        Version                   Repository                                          Size
==================================================================================================================================================
Installing:
 epel-release                      noarch                      7-14                      /epel-release-latest-7.noarch                       25 k

Transaction Summary
==================================================================================================================================================
Install  1 Package

Total size: 25 k
Installed size: 25 k
Is this ok [y/d/N]: y
Downloading packages:
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : epel-release-7-14.noarch                                                                                                       1/1 
  Verifying  : epel-release-7-14.noarch                                                                                                       1/1 

Installed:
  epel-release.noarch 0:7-14                                                                                                                      

Complete!
[root@kvm-01-guest02 ~]# rpm -q epel-release
epel-release-7-14.noarch
[root@kvm-01-guest02 ~]# rpm -ql epel-release
/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
/etc/yum.repos.d/epel-testing.repo
/etc/yum.repos.d/epel.repo
/usr/lib/systemd/system-preset/90-epel.preset
/usr/share/doc/epel-release-7
/usr/share/doc/epel-release-7/GPL
```
