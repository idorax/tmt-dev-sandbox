```bash
huanli@kvm-01-guest10:~$ podman run --rm -it --name c8s centos:stream8
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]# cat /etc/*release | grep -E PRETTY
PRETTY_NAME="CentOS Stream 8"
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]# dnf --version
Failed to set locale, defaulting to C.UTF-8
4.7.0
  Installed: dnf-0:4.7.0-19.el8.noarch at Mon Oct 16 04:52:16 2023
  Built    : builder@centos.org at Wed Jun 28 08:44:13 2023

  Installed: rpm-0:4.14.3-26.el8.x86_64 at Mon Oct 16 04:52:15 2023
  Built    : CentOS Buildsys <bugs@centos.org> at Wed Dec 21 11:18:39 2022
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]# rpm -q epel-release epel-next-release
package epel-release is not installed
package epel-next-release is not installed
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]# dnf -y install epel-release epel-next-release  > /tmp/a 2>&1
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]# rpm -q epel-release epel-next-release
epel-release-8-11.el8.noarch
epel-next-release-8-11.el8.noarch
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]# grep -E '\[epel' /etc/yum.repos.d/epel.repo
[epel]
[epel-debuginfo]
[epel-source]
[root@b8a9a68506d7 /]# grep -E '\[epel' /etc/yum.repos.d/epel-next.repo
[epel-next]
[epel-next-debuginfo]
[epel-next-source]
[root@b8a9a68506d7 /]# grep 'enabled=' /etc/yum.repos.d/epel.repo
enabled=1
enabled=0
enabled=0
[root@b8a9a68506d7 /]# grep 'enabled='  /etc/yum.repos.d/epel-next.repo
enabled=1
enabled=0
enabled=0
[root@b8a9a68506d7 /]# dnf config-manager --enable epel epel-debuginfo epel-source
Failed to set locale, defaulting to C.UTF-8
No such command: config-manager. Please use /usr/bin/dnf --help
It could be a DNF plugin command, try: "dnf install 'dnf-command(config-manager)'"
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]# # XXX: dnf config-manager is not installed by default ######################
[root@b8a9a68506d7 /]# #      We should install package dnf-plugins-core
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]# dnf -y install 'dnf-command(config-manager)'
Failed to set locale, defaulting to C.UTF-8
CentOS Stream 8 - AppStream                                                                                        28 MB/s |  33 MB     00:01
CentOS Stream 8 - BaseOS                                                                                          9.6 MB/s |  50 MB     00:05
CentOS Stream 8 - Extras                                                                                          179 kB/s |  18 kB     00:00
CentOS Stream 8 - Extras common packages                                                                           26 kB/s | 6.9 kB     00:00
Dependencies resolved.
==================================================================================================================================================
 Package                                      Architecture               Version                              Repository                     Size
==================================================================================================================================================
Installing:
 dnf-plugins-core                             noarch                     4.0.21-23.el8                        baseos                         77 k
Installing dependencies:
 dbus-glib                                    x86_64                     0.110-2.el8                          baseos                        127 k
 python3-dateutil                             noarch                     1:2.6.1-6.el8                        baseos                        251 k
 python3-dbus                                 x86_64                     1.2.4-15.el8                         baseos                        134 k
 python3-dnf-plugins-core                     noarch                     4.0.21-23.el8                        baseos                        279 k
 python3-six                                  noarch                     1.11.0-8.el8                         baseos                         38 k
 python3-systemd                              x86_64                     234-8.el8                            appstream                      81 k

Transaction Summary
==================================================================================================================================================
Install  7 Packages

Total download size: 988 k
Installed size: 2.6 M
Downloading Packages:
(1/7): dnf-plugins-core-4.0.21-23.el8.noarch.rpm                                                                  2.2 MB/s |  77 kB     00:00
(2/7): dbus-glib-0.110-2.el8.x86_64.rpm                                                                           3.2 MB/s | 127 kB     00:00
(3/7): python3-systemd-234-8.el8.x86_64.rpm                                                                       1.8 MB/s |  81 kB     00:00
(4/7): python3-dbus-1.2.4-15.el8.x86_64.rpm                                                                       4.6 MB/s | 134 kB     00:00
(5/7): python3-dateutil-2.6.1-6.el8.noarch.rpm                                                                    5.0 MB/s | 251 kB     00:00
(6/7): python3-six-1.11.0-8.el8.noarch.rpm                                                                        2.3 MB/s |  38 kB     00:00
(7/7): python3-dnf-plugins-core-4.0.21-23.el8.noarch.rpm                                                          4.5 MB/s | 279 kB     00:00
--------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                             2.4 MB/s | 988 kB     00:00
CentOS Stream 8 - AppStream                                                                                       1.6 MB/s | 1.6 kB     00:00
Importing GPG key 0x8483C65D:
 Userid     : "CentOS (CentOS Official Signing Key) <security@centos.org>"
 Fingerprint: 99DB 70FA E1D7 CE22 7FB6 4882 05B5 55B3 8483 C65D
 From       : /etc/pki/rpm-gpg/RPM-GPG-KEY-centosofficial
Key imported successfully
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                          1/1
  Installing       : python3-six-1.11.0-8.el8.noarch                                                                                          1/7
  Installing       : python3-dateutil-1:2.6.1-6.el8.noarch                                                                                    2/7
  Installing       : dbus-glib-0.110-2.el8.x86_64                                                                                             3/7
  Running scriptlet: dbus-glib-0.110-2.el8.x86_64                                                                                             3/7
  Installing       : python3-dbus-1.2.4-15.el8.x86_64                                                                                         4/7
  Installing       : python3-systemd-234-8.el8.x86_64                                                                                         5/7
  Installing       : python3-dnf-plugins-core-4.0.21-23.el8.noarch                                                                            6/7
  Installing       : dnf-plugins-core-4.0.21-23.el8.noarch                                                                                    7/7
  Running scriptlet: dnf-plugins-core-4.0.21-23.el8.noarch                                                                                    7/7
  Verifying        : python3-systemd-234-8.el8.x86_64                                                                                         1/7
  Verifying        : dbus-glib-0.110-2.el8.x86_64                                                                                             2/7
  Verifying        : dnf-plugins-core-4.0.21-23.el8.noarch                                                                                    3/7
  Verifying        : python3-dateutil-1:2.6.1-6.el8.noarch                                                                                    4/7
  Verifying        : python3-dbus-1.2.4-15.el8.x86_64                                                                                         5/7
  Verifying        : python3-dnf-plugins-core-4.0.21-23.el8.noarch                                                                            6/7
  Verifying        : python3-six-1.11.0-8.el8.noarch                                                                                          7/7

Installed:
  dbus-glib-0.110-2.el8.x86_64              dnf-plugins-core-4.0.21-23.el8.noarch                  python3-dateutil-1:2.6.1-6.el8.noarch
  python3-dbus-1.2.4-15.el8.x86_64          python3-dnf-plugins-core-4.0.21-23.el8.noarch          python3-six-1.11.0-8.el8.noarch
  python3-systemd-234-8.el8.x86_64

Complete!
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]# dnf -y install 'dnf-command(config-manager)'
Failed to set locale, defaulting to C.UTF-8
Last metadata expiration check: 0:00:14 ago on Thu Oct 19 06:46:35 2023.
Package dnf-plugins-core-4.0.21-23.el8.noarch is already installed.
Dependencies resolved.
Nothing to do.
Complete!
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]# dnf config-manager --enable epel epel-debuginfo epel-source
Failed to set locale, defaulting to C.UTF-8
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]#
[root@b8a9a68506d7 /]# grep 'enabled=' /etc/yum.repos.d/epel.repo
enabled=1
enabled=1
enabled=1
[root@b8a9a68506d7 /]#
```
