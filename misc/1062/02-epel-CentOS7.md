```bash
[root@kvm-01-guest01 ~]# cat /etc/system-release
CentOS Linux release 7.9.2009 (Core)
[root@kvm-01-guest01 ~]# ls -l /etc/*.release
ls: cannot access /etc/*.release: No such file or directory
[root@kvm-01-guest01 ~]# ls -l /etc/*release
-rw-r--r--. 1 root root 37 Oct 23  2020 /etc/centos-release
lrwxrwxrwx. 1 root root 21 May 15 16:35 /etc/os-release -> ../usr/lib/os-release
lrwxrwxrwx. 1 root root 14 May 15 16:35 /etc/redhat-release -> centos-release
lrwxrwxrwx. 1 root root 14 May 15 16:35 /etc/system-release -> centos-release
[root@kvm-01-guest01 ~]# 
[root@kvm-01-guest01 ~]# uname -a
Linux kvm-01-guest01.lab.eng.brq2.redhat.com 3.10.0-1160.el7.x86_64 #1 SMP Mon Oct 19 16:18:59 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
[root@kvm-01-guest01 ~]# 
[root@kvm-01-guest01 ~]# ls -l /etc/*release
-rw-r--r--. 1 root root 37 Oct 23  2020 /etc/centos-release
lrwxrwxrwx. 1 root root 21 May 15 16:35 /etc/os-release -> ../usr/lib/os-release
lrwxrwxrwx. 1 root root 14 May 15 16:35 /etc/redhat-release -> centos-release
lrwxrwxrwx. 1 root root 14 May 15 16:35 /etc/system-release -> centos-release
[root@kvm-01-guest01 ~]# 
[root@kvm-01-guest01 ~]# cat /etc/centos-release
CentOS Linux release 7.9.2009 (Core)
[root@kvm-01-guest01 ~]# cat /etc/os-release
NAME="CentOS Linux"
VERSION="7 (Core)"
ID="centos"
ID_LIKE="rhel fedora"
VERSION_ID="7"
PRETTY_NAME="CentOS Linux 7 (Core)"
ANSI_COLOR="0;31"
CPE_NAME="cpe:/o:centos:centos:7"
HOME_URL="https://www.centos.org/"
BUG_REPORT_URL="https://bugs.centos.org/"

CENTOS_MANTISBT_PROJECT="CentOS-7"
CENTOS_MANTISBT_PROJECT_VERSION="7"
REDHAT_SUPPORT_PRODUCT="centos"
REDHAT_SUPPORT_PRODUCT_VERSION="7"

[root@kvm-01-guest01 ~]# cat /etc/redhat-release
CentOS Linux release 7.9.2009 (Core)
[root@kvm-01-guest01 ~]# cat /etc/system-release
CentOS Linux release 7.9.2009 (Core)
[root@kvm-01-guest01 ~]# rpm -q epel-release
package epel-release is not installed
[root@kvm-01-guest01 ~]# yum install epel-release
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: merlin.fit.vutbr.cz
 * extras: merlin.fit.vutbr.cz
 * updates: merlin.fit.vutbr.cz
Resolving Dependencies
--> Running transaction check
---> Package epel-release.noarch 0:7-11 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

==================================================================================================================================================
 Package                                Arch                             Version                           Repository                        Size
==================================================================================================================================================
Installing:
 epel-release                           noarch                           7-11                              extras                            15 k

Transaction Summary
==================================================================================================================================================
Install  1 Package

Total download size: 15 k
Installed size: 24 k
Is this ok [y/d/N]: y
Downloading packages:
epel-release-7-11.noarch.rpm                                                                                               |  15 kB  00:00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : epel-release-7-11.noarch                                                                                                       1/1 
  Verifying  : epel-release-7-11.noarch                                                                                                       1/1 

Installed:
  epel-release.noarch 0:7-11                                                                                                                      

Complete!
[root@kvm-01-guest01 ~]# rpm -q epel-release
epel-release-7-11.noarch
[root@kvm-01-guest01 ~]# rpm -ql epel-release
/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
/etc/yum.repos.d/epel-testing.repo
/etc/yum.repos.d/epel.repo
/usr/lib/systemd/system-preset/90-epel.preset
/usr/share/doc/epel-release-7
/usr/share/doc/epel-release-7/GPL
[root@kvm-01-guest01 ~]# 
```
