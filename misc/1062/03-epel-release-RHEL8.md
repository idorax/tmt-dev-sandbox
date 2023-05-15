```bash
# https://docs.fedoraproject.org/en-US/epel/#_quickstart

[root@kvm-01-guest02 ~]# uname -a
Linux kvm-01-guest02.lab.eng.brq2.redhat.com 4.18.0-492.el8.x86_64 #1 SMP Tue May 9 14:50:21 EDT 2023 x86_64 x86_64 x86_64 GNU/Linux
[root@kvm-01-guest02 ~]# 
[root@kvm-01-guest02 ~]# 
[root@kvm-01-guest02 ~]# ls -l /etc/*release
lrwxrwxrwx. 1 root root 21 Jan 16 09:09 /etc/os-release -> ../usr/lib/os-release
-rw-r--r--. 1 root root 50 Jan 16 09:09 /etc/redhat-release
lrwxrwxrwx. 1 root root 14 Jan 16 09:09 /etc/system-release -> redhat-release
[root@kvm-01-guest02 ~]# 
[root@kvm-01-guest02 ~]# 
[root@kvm-01-guest02 ~]# cat /etc/os-release
NAME="Red Hat Enterprise Linux"
VERSION="8.9 (Ootpa)"
ID="rhel"
ID_LIKE="fedora"
VERSION_ID="8.9"
PLATFORM_ID="platform:el8"
PRETTY_NAME="Red Hat Enterprise Linux 8.9 Beta (Ootpa)"
ANSI_COLOR="0;31"
CPE_NAME="cpe:/o:redhat:enterprise_linux:8::baseos"
HOME_URL="https://www.redhat.com/"
DOCUMENTATION_URL="https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8"
BUG_REPORT_URL="https://bugzilla.redhat.com/"

REDHAT_BUGZILLA_PRODUCT="Red Hat Enterprise Linux 8"
REDHAT_BUGZILLA_PRODUCT_VERSION=8.9
REDHAT_SUPPORT_PRODUCT="Red Hat Enterprise Linux"
REDHAT_SUPPORT_PRODUCT_VERSION="8.9 Beta"
[root@kvm-01-guest02 ~]# 
[root@kvm-01-guest02 ~]# 
[root@kvm-01-guest02 ~]# cat /etc/redhat-release
Red Hat Enterprise Linux release 8.9 Beta (Ootpa)
[root@kvm-01-guest02 ~]# 
[root@kvm-01-guest02 ~]# cat /etc/system-release
Red Hat Enterprise Linux release 8.9 Beta (Ootpa)
[root@kvm-01-guest02 ~]# 
[root@kvm-01-guest02 ~]# rpm -q epel
package epel is not installed
[root@kvm-01-guest02 ~]# 
[root@kvm-01-guest02 ~]# subscription-manager repos --enable codeready-builder-for-rhel-8-$(arch)-rpms
This system has no repositories available through subscriptions.
[root@kvm-01-guest02 ~]# dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
Updating Subscription Management repositories.
Unable to read consumer identity

This system is not registered with an entitlement server. You can use subscription-manager to register.

Last metadata expiration check: 0:26:18 ago on Mon 15 May 2023 04:45:09 PM CEST.
epel-release-latest-8.noarch.rpm                                                                                   56 kB/s |  25 kB     00:00    
Dependencies resolved.
==================================================================================================================================================
 Package                              Architecture                   Version                           Repository                            Size
==================================================================================================================================================
Installing:
 epel-release                         noarch                         8-19.el8                          @commandline                          25 k

Transaction Summary
==================================================================================================================================================
Install  1 Package

Total size: 25 k
Installed size: 35 k
Downloading Packages:
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                          1/1 
  Installing       : epel-release-8-19.el8.noarch                                                                                             1/1 
  Running scriptlet: epel-release-8-19.el8.noarch                                                                                             1/1 
Many EPEL packages require the CodeReady Builder (CRB) repository.
It is recommended that you run /usr/bin/crb enable to enable the CRB repository.

  Verifying        : epel-release-8-19.el8.noarch                                                                                             1/1 
Installed products updated.

Installed:
  epel-release-8-19.el8.noarch                                                                                                                    

Complete!
[root@kvm-01-guest02 ~]# 
[root@kvm-01-guest02 ~]# rpm -q epel
package epel is not installed
[root@kvm-01-guest02 ~]# 
[root@kvm-01-guest02 ~]# rpm -q epel-release
epel-release-8-19.el8.noarch
[root@kvm-01-guest02 ~]# rpm -ql epel-release
/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8
/etc/yum.repos.d/epel-modular.repo
/etc/yum.repos.d/epel-testing-modular.repo
/etc/yum.repos.d/epel-testing.repo
/etc/yum.repos.d/epel.repo
/usr/bin/crb
/usr/lib/systemd/system-preset/90-epel.preset
/usr/share/doc/epel-release
/usr/share/doc/epel-release/README-epel-8-packaging.md
/usr/share/licenses/epel-release
/usr/share/licenses/epel-release/GPL
[root@kvm-01-guest02 ~]# 

```
