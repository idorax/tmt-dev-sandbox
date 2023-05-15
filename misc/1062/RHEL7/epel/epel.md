# EPEL on RHEL 8

## 1 - packages

```bash
################################################################################
# Run command(s) on RHEL 7                                                     #
################################################################################
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  date
Tue Oct 10 08:47:32 CEST 2023
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  hostname
kvm-01-guest09.lab.eng.brq2.redhat.com
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  uname -a
Linux kvm-01-guest09.lab.eng.brq2.redhat.com 3.10.0-1160.102.1.el7.x86_64 #1 SMP Mon Sep 25 05:00:52 EDT 2023 x86_64 x86_64 x86_64 GNU/Linux
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  yum provides epel-release
Loaded plugins: product-id, search-disabled-repos, subscription-manager

This system is not registered with an entitlement server. You can use subscription-manager to register.

epel-release-7-14.noarch : Extra Packages for Enterprise Linux repository
                         : configuration
Repo        : epel



epel-release-7-14.noarch : Extra Packages for Enterprise Linux repository
                         : configuration
Repo        : @/epel-release-latest-7.noarch



root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  yum provides epel-next-release
Loaded plugins: product-id, search-disabled-repos, subscription-manager

This system is not registered with an entitlement server. You can use subscription-manager to register.

No matches found
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  yum -y remove epel-release
Loaded plugins: product-id, search-disabled-repos, subscription-manager

This system is not registered with an entitlement server. You can use subscription-manager to register.

Resolving Dependencies
--> Running transaction check
---> Package epel-release.noarch 0:7-14 will be erased
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package          Arch       Version   Repository                          Size
================================================================================
Removing:
 epel-release     noarch     7-14      @/epel-release-latest-7.noarch      25 k

Transaction Summary
================================================================================
Remove  1 Package

Installed size: 25 k
Downloading packages:
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Erasing    : epel-release-7-14.noarch                                     1/1
  Verifying  : epel-release-7-14.noarch                                     1/1

Removed:
  epel-release.noarch 0:7-14

Complete!
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
Loaded plugins: product-id, search-disabled-repos, subscription-manager

This system is not registered with an entitlement server. You can use subscription-manager to register.

Examining /var/tmp/yum-root-_3s7fH/epel-release-latest-7.noarch.rpm: epel-release-7-14.noarch
Marking /var/tmp/yum-root-_3s7fH/epel-release-latest-7.noarch.rpm to be installed
Resolving Dependencies
--> Running transaction check
---> Package epel-release.noarch 0:7-14 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package          Arch       Version    Repository                         Size
================================================================================
Installing:
 epel-release     noarch     7-14       /epel-release-latest-7.noarch      25 k

Transaction Summary
================================================================================
Install  1 Package

Total size: 25 k
Installed size: 25 k
Downloading packages:
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : epel-release-7-14.noarch                                     1/1
  Verifying  : epel-release-7-14.noarch                                     1/1

Installed:
  epel-release.noarch 0:7-14

Complete!
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  rpm -q epel-release
epel-release-7-14.noarch
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  rpm -ql epel-release
/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
/etc/yum.repos.d/epel-testing.repo
/etc/yum.repos.d/epel.repo
/usr/lib/systemd/system-preset/90-epel.preset
/usr/share/doc/epel-release-7
/usr/share/doc/epel-release-7/GPL
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  ls -l /etc/yum.repos.d/*epel*.repo
-rw-r--r--. 1 root root 1358 Sep  4  2021 /etc/yum.repos.d/epel.repo
-rw-r--r--. 1 root root 1457 Sep  4  2021 /etc/yum.repos.d/epel-testing.repo
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  cat /etc/yum.repos.d/epel.repo
[epel]
name=Extra Packages for Enterprise Linux 7 - $basearch
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place its address here.
#baseurl=http://download.example/pub/epel/7/$basearch
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=$basearch&infra=$infra&content=$contentdir
failovermethod=priority
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7

[epel-debuginfo]
name=Extra Packages for Enterprise Linux 7 - $basearch - Debug
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place its address here.
#baseurl=http://download.example/pub/epel/7/$basearch/debug
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-debug-7&arch=$basearch&infra=$infra&content=$contentdir
failovermethod=priority
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
gpgcheck=1

[epel-source]
name=Extra Packages for Enterprise Linux 7 - $basearch - Source
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place it's address here.
#baseurl=http://download.example/pub/epel/7/source/tree/
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-source-7&arch=$basearch&infra=$infra&content=$contentdir
failovermethod=priority
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
gpgcheck=1
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  cat /etc/yum.repos.d/epel-testing.repo
[epel-testing]
name=Extra Packages for Enterprise Linux 7 - Testing - $basearch
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place its address here.
#baseurl=http://download.example/pub/epel/testing/7/$basearch
metalink=https://mirrors.fedoraproject.org/metalink?repo=testing-epel7&arch=$basearch&infra=$infra&content=$contentdir
failovermethod=priority
enabled=0
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7

[epel-testing-debuginfo]
name=Extra Packages for Enterprise Linux 7 - Testing - $basearch - Debug
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place its address here.
#baseurl=http://download.example/pub/epel/testing/7/$basearch/debug
metalink=https://mirrors.fedoraproject.org/metalink?repo=testing-debug-epel7&arch=$basearch&infra=$infra&content=$contentdir
failovermethod=priority
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
gpgcheck=1

[epel-testing-source]
name=Extra Packages for Enterprise Linux 7 - Testing - $basearch - Source
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place it's address here.
#baseurl=http://download.example/pub/epel/testing/7/source/tree/
metalink=https://mirrors.fedoraproject.org/metalink?repo=testing-source-epel7&arch=$basearch&infra=$infra&content=$contentdir
failovermethod=priority
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
gpgcheck=1
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest09.lab.eng.brq2.redhat.com:/tmp >>>#
```

## 2 - OP repo files

## 2.1 - Install package `yum-utils`

```bash
root@RHEL7#
root@RHEL7# rpm -q yum-utils
package yum-utils is not installed
root@RHEL7#
root@RHEL7# yum -y install yum-utils
Loaded plugins: product-id, search-disabled-repos, subscription-manager

This system is not registered with an entitlement server. You can use subscription-manager to register.

Resolving Dependencies
--> Running transaction check
---> Package yum-utils.noarch 0:1.1.31-54.el7_8 will be installed
--> Processing Dependency: python-kitchen for package: yum-utils-1.1.31-54.el7_8.noarch
--> Running transaction check
---> Package python-kitchen.noarch 0:1.1.1-5.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

==================================================================================================================================================
 Package                             Arch                        Version                                 Repository                          Size
==================================================================================================================================================
Installing:
 yum-utils                           noarch                      1.1.31-54.el7_8                         beaker-Server                      122 k
Installing for dependencies:
 python-kitchen                      noarch                      1.1.1-5.el7                             beaker-Server                      266 k

Transaction Summary
==================================================================================================================================================
Install  1 Package (+1 Dependent package)

Total download size: 388 k
Installed size: 1.7 M
Downloading packages:
(1/2): yum-utils-1.1.31-54.el7_8.noarch.rpm                                                                                | 122 kB  00:00:00
(2/2): python-kitchen-1.1.1-5.el7.noarch.rpm                                                                               | 266 kB  00:00:00
--------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                             2.1 MB/s | 388 kB  00:00:00
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : python-kitchen-1.1.1-5.el7.noarch                                                                                              1/2
  Installing : yum-utils-1.1.31-54.el7_8.noarch                                                                                               2/2
  Verifying  : python-kitchen-1.1.1-5.el7.noarch                                                                                              1/2
  Verifying  : yum-utils-1.1.31-54.el7_8.noarch                                                                                               2/2

Installed:
  yum-utils.noarch 0:1.1.31-54.el7_8

Dependency Installed:
  python-kitchen.noarch 0:1.1.1-5.el7

Complete!
root@RHEL7#
root@RHEL7# rpm -ql yum-utils
/etc/bash_completion.d
/etc/bash_completion.d/yum-utils.bash
/usr/bin/debuginfo-install
/usr/bin/find-repos-of-install
/usr/bin/needs-restarting
/usr/bin/package-cleanup
/usr/bin/repo-graph
/usr/bin/repo-rss
/usr/bin/repoclosure
/usr/bin/repodiff
/usr/bin/repomanage
/usr/bin/repoquery
/usr/bin/reposync
/usr/bin/repotrack
/usr/bin/show-changed-rco
/usr/bin/show-installed
/usr/bin/verifytree
/usr/bin/yum-builddep
/usr/bin/yum-config-manager
/usr/bin/yum-debug-dump
/usr/bin/yum-debug-restore
/usr/bin/yum-groups-manager
/usr/bin/yumdownloader
/usr/lib/python2.7/site-packages/yumutils
/usr/lib/python2.7/site-packages/yumutils/__init__.py
/usr/lib/python2.7/site-packages/yumutils/__init__.pyc
/usr/lib/python2.7/site-packages/yumutils/__init__.pyo
/usr/lib/python2.7/site-packages/yumutils/i18n.py
/usr/lib/python2.7/site-packages/yumutils/i18n.pyc
/usr/lib/python2.7/site-packages/yumutils/i18n.pyo
/usr/sbin/yum-complete-transaction
/usr/sbin/yumdb
/usr/share/doc/yum-utils-1.1.31
/usr/share/doc/yum-utils-1.1.31/COPYING
/usr/share/doc/yum-utils-1.1.31/README
/usr/share/doc/yum-utils-1.1.31/yum-util-cli-template
/usr/share/locale/da/LC_MESSAGES/yum-utils.mo
/usr/share/man/man1/debuginfo-install.1.gz
/usr/share/man/man1/find-repos-of-install.1.gz
/usr/share/man/man1/needs-restarting.1.gz
/usr/share/man/man1/package-cleanup.1.gz
/usr/share/man/man1/repo-graph.1.gz
/usr/share/man/man1/repo-rss.1.gz
/usr/share/man/man1/repoclosure.1.gz
/usr/share/man/man1/repodiff.1.gz
/usr/share/man/man1/repomanage.1.gz
/usr/share/man/man1/repoquery.1.gz
/usr/share/man/man1/reposync.1.gz
/usr/share/man/man1/repotrack.1.gz
/usr/share/man/man1/show-changed-rco.1.gz
/usr/share/man/man1/show-installed.1.gz
/usr/share/man/man1/verifytree.1.gz
/usr/share/man/man1/yum-builddep.1.gz
/usr/share/man/man1/yum-config-manager.1.gz
/usr/share/man/man1/yum-debug-dump.1.gz
/usr/share/man/man1/yum-debug-restore.1.gz
/usr/share/man/man1/yum-groups-manager.1.gz
/usr/share/man/man1/yum-utils.1.gz
/usr/share/man/man1/yumdownloader.1.gz
/usr/share/man/man8/yum-complete-transaction.8.gz
/usr/share/man/man8/yumdb.8.gz
root@RHEL7#
```

## 2.2 - enable/disable repos

```bash

root@RHEL7# yum-config-manager --enable epel epel-debuginfo epel-source
Loaded plugins: product-id, subscription-manager

This system is not registered with an entitlement server. You can use subscription-manager to register.

=================================================================== repo: epel ===================================================================
[epel]
async = True
bandwidth = 0
base_persistdir = /var/lib/yum/repos/x86_64/7Server
baseurl =
cache = 0
cachedir = /var/cache/yum/x86_64/7Server/epel
check_config_file_age = True
compare_providers_priority = 80
cost = 1000
deltarpm_metadata_percentage = 100
deltarpm_percentage =
enabled = True
enablegroups = True
exclude =
failovermethod = priority
ftp_disable_epsv = False
gpgcadir = /var/lib/yum/repos/x86_64/7Server/epel/gpgcadir
gpgcakey =
gpgcheck = True
gpgdir = /var/lib/yum/repos/x86_64/7Server/epel/gpgdir
gpgkey = file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
hdrdir = /var/cache/yum/x86_64/7Server/epel/headers
http_caching = all
includepkgs =
ip_resolve =
keepalive = True
keepcache = False
mddownloadpolicy = sqlite
mdpolicy = group:small
mediaid =
metadata_expire = 21600
metadata_expire_filter = read-only:present
metalink = https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=x86_64&infra=$infra&content=$contentdir
minrate = 0
mirrorlist =
mirrorlist_expire = 86400
name = Extra Packages for Enterprise Linux 7 - x86_64
old_base_cache_dir =
password =
persistdir = /var/lib/yum/repos/x86_64/7Server/epel
pkgdir = /var/cache/yum/x86_64/7Server/epel/packages
proxy = False
proxy_dict =
proxy_password =
proxy_username =
repo_gpgcheck = False
retries = 10
skip_if_unavailable = False
ssl_check_cert_permissions = True
sslcacert =
sslclientcert =
sslclientkey =
sslverify = True
throttle = 0
timeout = 30.0
ui_id = epel/x86_64
ui_repoid_vars = releasever,
   basearch
username =

============================================================== repo: epel-debuginfo ==============================================================
[epel-debuginfo]
async = True
bandwidth = 0
base_persistdir = /var/lib/yum/repos/x86_64/7Server
baseurl =
cache = 0
cachedir = /var/cache/yum/x86_64/7Server/epel-debuginfo
check_config_file_age = True
compare_providers_priority = 80
cost = 1000
deltarpm_metadata_percentage = 100
deltarpm_percentage =
enabled = 1
enablegroups = True
exclude =
failovermethod = priority
ftp_disable_epsv = False
gpgcadir = /var/lib/yum/repos/x86_64/7Server/epel-debuginfo/gpgcadir
gpgcakey =
gpgcheck = True
gpgdir = /var/lib/yum/repos/x86_64/7Server/epel-debuginfo/gpgdir
gpgkey = file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
hdrdir = /var/cache/yum/x86_64/7Server/epel-debuginfo/headers
http_caching = all
includepkgs =
ip_resolve =
keepalive = True
keepcache = False
mddownloadpolicy = sqlite
mdpolicy = group:small
mediaid =
metadata_expire = 21600
metadata_expire_filter = read-only:present
metalink = https://mirrors.fedoraproject.org/metalink?repo=epel-debug-7&arch=x86_64&infra=$infra&content=$contentdir
minrate = 0
mirrorlist =
mirrorlist_expire = 86400
name = Extra Packages for Enterprise Linux 7 - x86_64 - Debug
old_base_cache_dir =
password =
persistdir = /var/lib/yum/repos/x86_64/7Server/epel-debuginfo
pkgdir = /var/cache/yum/x86_64/7Server/epel-debuginfo/packages
proxy = False
proxy_dict =
proxy_password =
proxy_username =
repo_gpgcheck = False
retries = 10
skip_if_unavailable = False
ssl_check_cert_permissions = True
sslcacert =
sslclientcert =
sslclientkey =
sslverify = True
throttle = 0
timeout = 30.0
ui_id = epel-debuginfo/x86_64
ui_repoid_vars = releasever,
   basearch
username =

=============================================================== repo: epel-source ================================================================
[epel-source]
async = True
bandwidth = 0
base_persistdir = /var/lib/yum/repos/x86_64/7Server
baseurl =
cache = 0
cachedir = /var/cache/yum/x86_64/7Server/epel-source
check_config_file_age = True
compare_providers_priority = 80
cost = 1000
deltarpm_metadata_percentage = 100
deltarpm_percentage =
enabled = 1
enablegroups = True
exclude =
failovermethod = priority
ftp_disable_epsv = False
gpgcadir = /var/lib/yum/repos/x86_64/7Server/epel-source/gpgcadir
gpgcakey =
gpgcheck = True
gpgdir = /var/lib/yum/repos/x86_64/7Server/epel-source/gpgdir
gpgkey = file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
hdrdir = /var/cache/yum/x86_64/7Server/epel-source/headers
http_caching = all
includepkgs =
ip_resolve =
keepalive = True
keepcache = False
mddownloadpolicy = sqlite
mdpolicy = group:small
mediaid =
metadata_expire = 21600
metadata_expire_filter = read-only:present
metalink = https://mirrors.fedoraproject.org/metalink?repo=epel-source-7&arch=x86_64&infra=$infra&content=$contentdir
minrate = 0
mirrorlist =
mirrorlist_expire = 86400
name = Extra Packages for Enterprise Linux 7 - x86_64 - Source
old_base_cache_dir =
password =
persistdir = /var/lib/yum/repos/x86_64/7Server/epel-source
pkgdir = /var/cache/yum/x86_64/7Server/epel-source/packages
proxy = False
proxy_dict =
proxy_password =
proxy_username =
repo_gpgcheck = False
retries = 10
skip_if_unavailable = False
ssl_check_cert_permissions = True
sslcacert =
sslclientcert =
sslclientkey =
sslverify = True
throttle = 0
timeout = 30.0
ui_id = epel-source/x86_64
ui_repoid_vars = releasever,
   basearch
username =

root@RHEL7#

root@RHEL7# grep enabled= /etc/yum.repos.d/epel.repo
enabled=1
enabled=1
enabled=1
root@RHEL7# grep enabled= /etc/yum.repos.d/epel-testing.repo
enabled=0
enabled=0
enabled=0
root@RHEL7#
root@RHEL7# yum-config-manager --disable epel epel-debuginfo epel-source
Loaded plugins: product-id, subscription-manager

This system is not registered with an entitlement server. You can use subscription-manager to register.

=================================================================== repo: epel ===================================================================
[epel]
async = True
bandwidth = 0
base_persistdir = /var/lib/yum/repos/x86_64/7Server
baseurl =
cache = 0
cachedir = /var/cache/yum/x86_64/7Server/epel
check_config_file_age = True
compare_providers_priority = 80
cost = 1000
deltarpm_metadata_percentage = 100
deltarpm_percentage =
enabled = 0
enablegroups = True
exclude =
failovermethod = priority
ftp_disable_epsv = False
gpgcadir = /var/lib/yum/repos/x86_64/7Server/epel/gpgcadir
gpgcakey =
gpgcheck = True
gpgdir = /var/lib/yum/repos/x86_64/7Server/epel/gpgdir
gpgkey = file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
hdrdir = /var/cache/yum/x86_64/7Server/epel/headers
http_caching = all
includepkgs =
ip_resolve =
keepalive = True
keepcache = False
mddownloadpolicy = sqlite
mdpolicy = group:small
mediaid =
metadata_expire = 21600
metadata_expire_filter = read-only:present
metalink = https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=x86_64&infra=$infra&content=$contentdir
minrate = 0
mirrorlist =
mirrorlist_expire = 86400
name = Extra Packages for Enterprise Linux 7 - x86_64
old_base_cache_dir =
password =
persistdir = /var/lib/yum/repos/x86_64/7Server/epel
pkgdir = /var/cache/yum/x86_64/7Server/epel/packages
proxy = False
proxy_dict =
proxy_password =
proxy_username =
repo_gpgcheck = False
retries = 10
skip_if_unavailable = False
ssl_check_cert_permissions = True
sslcacert =
sslclientcert =
sslclientkey =
sslverify = True
throttle = 0
timeout = 30.0
ui_id = epel/x86_64
ui_repoid_vars = releasever,
   basearch
username =

============================================================== repo: epel-debuginfo ==============================================================
[epel-debuginfo]
async = True
bandwidth = 0
base_persistdir = /var/lib/yum/repos/x86_64/7Server
baseurl =
cache = 0
cachedir = /var/cache/yum/x86_64/7Server/epel-debuginfo
check_config_file_age = True
compare_providers_priority = 80
cost = 1000
deltarpm_metadata_percentage = 100
deltarpm_percentage =
enabled = 0
enablegroups = True
exclude =
failovermethod = priority
ftp_disable_epsv = False
gpgcadir = /var/lib/yum/repos/x86_64/7Server/epel-debuginfo/gpgcadir
gpgcakey =
gpgcheck = True
gpgdir = /var/lib/yum/repos/x86_64/7Server/epel-debuginfo/gpgdir
gpgkey = file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
hdrdir = /var/cache/yum/x86_64/7Server/epel-debuginfo/headers
http_caching = all
includepkgs =
ip_resolve =
keepalive = True
keepcache = False
mddownloadpolicy = sqlite
mdpolicy = group:small
mediaid =
metadata_expire = 21600
metadata_expire_filter = read-only:present
metalink = https://mirrors.fedoraproject.org/metalink?repo=epel-debug-7&arch=x86_64&infra=$infra&content=$contentdir
minrate = 0
mirrorlist =
mirrorlist_expire = 86400
name = Extra Packages for Enterprise Linux 7 - x86_64 - Debug
old_base_cache_dir =
password =
persistdir = /var/lib/yum/repos/x86_64/7Server/epel-debuginfo
pkgdir = /var/cache/yum/x86_64/7Server/epel-debuginfo/packages
proxy = False
proxy_dict =
proxy_password =
proxy_username =
repo_gpgcheck = False
retries = 10
skip_if_unavailable = False
ssl_check_cert_permissions = True
sslcacert =
sslclientcert =
sslclientkey =
sslverify = True
throttle = 0
timeout = 30.0
ui_id = epel-debuginfo/x86_64
ui_repoid_vars = releasever,
   basearch
username =

=============================================================== repo: epel-source ================================================================
[epel-source]
async = True
bandwidth = 0
base_persistdir = /var/lib/yum/repos/x86_64/7Server
baseurl =
cache = 0
cachedir = /var/cache/yum/x86_64/7Server/epel-source
check_config_file_age = True
compare_providers_priority = 80
cost = 1000
deltarpm_metadata_percentage = 100
deltarpm_percentage =
enabled = 0
enablegroups = True
exclude =
failovermethod = priority
ftp_disable_epsv = False
gpgcadir = /var/lib/yum/repos/x86_64/7Server/epel-source/gpgcadir
gpgcakey =
gpgcheck = True
gpgdir = /var/lib/yum/repos/x86_64/7Server/epel-source/gpgdir
gpgkey = file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
hdrdir = /var/cache/yum/x86_64/7Server/epel-source/headers
http_caching = all
includepkgs =
ip_resolve =
keepalive = True
keepcache = False
mddownloadpolicy = sqlite
mdpolicy = group:small
mediaid =
metadata_expire = 21600
metadata_expire_filter = read-only:present
metalink = https://mirrors.fedoraproject.org/metalink?repo=epel-source-7&arch=x86_64&infra=$infra&content=$contentdir
minrate = 0
mirrorlist =
mirrorlist_expire = 86400
name = Extra Packages for Enterprise Linux 7 - x86_64 - Source
old_base_cache_dir =
password =
persistdir = /var/lib/yum/repos/x86_64/7Server/epel-source
pkgdir = /var/cache/yum/x86_64/7Server/epel-source/packages
proxy = False
proxy_dict =
proxy_password =
proxy_username =
repo_gpgcheck = False
retries = 10
skip_if_unavailable = False
ssl_check_cert_permissions = True
sslcacert =
sslclientcert =
sslclientkey =
sslverify = True
throttle = 0
timeout = 30.0
ui_id = epel-source/x86_64
ui_repoid_vars = releasever,
   basearch
username =

root@RHEL7# grep enabled= /etc/yum.repos.d/epel.repo
enabled=0
enabled=0
enabled=0
root@RHEL7#
```
