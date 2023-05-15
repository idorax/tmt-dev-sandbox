# EPEL on CentOS 7

## 01 - packages

```bash
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  date
[run_cmd@./runit.sh:13|1]+ ssh root@kvm-01-guest10.lab.eng.brq2.redhat.com date
Mon Oct  9 04:55:56 CEST 2023
[run_cmd@./runit.sh:14|1]+ rc=0
[run_cmd@./runit.sh:15|1]+ set +x
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  hostname
[run_cmd@./runit.sh:13|2]+ ssh root@kvm-01-guest10.lab.eng.brq2.redhat.com hostname
kvm-01-guest10.lab.eng.brq2.redhat.com
[run_cmd@./runit.sh:14|3]+ rc=0
[run_cmd@./runit.sh:15|3]+ set +x
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  uname -a
[run_cmd@./runit.sh:13|4]+ ssh root@kvm-01-guest10.lab.eng.brq2.redhat.com 'uname -a'
Linux kvm-01-guest10.lab.eng.brq2.redhat.com 3.10.0-1160.el7.x86_64 #1 SMP Mon Oct 19 16:18:59 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
[run_cmd@./runit.sh:14|5]+ rc=0
[run_cmd@./runit.sh:15|5]+ set +x
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  yum provides epel-release
[run_cmd@./runit.sh:13|6]+ ssh root@kvm-01-guest10.lab.eng.brq2.redhat.com 'yum provides epel-release'
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: merlin.fit.vutbr.cz
 * epel: fedora.ipacct.com
 * extras: merlin.fit.vutbr.cz
 * updates: merlin.fit.vutbr.cz
epel-release-7-11.noarch : Extra Packages for Enterprise Linux repository
                         : configuration
Repo        : extras



epel-release-7-14.noarch : Extra Packages for Enterprise Linux repository
                         : configuration
Repo        : epel



epel-release-7-11.noarch : Extra Packages for Enterprise Linux repository
                         : configuration
Repo        : @extras



[run_cmd@./runit.sh:14|10]+ rc=0
[run_cmd@./runit.sh:15|10]+ set +x
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  yum provides epel-next-release
[run_cmd@./runit.sh:13|10]+ ssh root@kvm-01-guest10.lab.eng.brq2.redhat.com 'yum provides epel-next-release'
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: merlin.fit.vutbr.cz
 * epel: fedora.ipacct.com
 * extras: merlin.fit.vutbr.cz
 * updates: merlin.fit.vutbr.cz
No matches found
[run_cmd@./runit.sh:14|17]+ rc=0
[run_cmd@./runit.sh:15|17]+ set +x
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  yum -y remove epel-release
[run_cmd@./runit.sh:13|18]+ ssh root@kvm-01-guest10.lab.eng.brq2.redhat.com 'yum -y remove epel-release'
Loaded plugins: fastestmirror
Resolving Dependencies
--> Running transaction check
---> Package epel-release.noarch 0:7-11 will be erased
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package                Arch             Version        Repository         Size
================================================================================
Removing:
 epel-release           noarch           7-11           @extras            24 k

Transaction Summary
================================================================================
Remove  1 Package

Installed size: 24 k
Downloading packages:
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Erasing    : epel-release-7-11.noarch                                     1/1
  Verifying  : epel-release-7-11.noarch                                     1/1

Removed:
  epel-release.noarch 0:7-11

Complete!
[run_cmd@./runit.sh:14|20]+ rc=0
[run_cmd@./runit.sh:15|20]+ set +x
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  yum -y install epel-release
[run_cmd@./runit.sh:13|20]+ ssh root@kvm-01-guest10.lab.eng.brq2.redhat.com 'yum -y install epel-release'
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

================================================================================
 Package                Arch             Version         Repository        Size
================================================================================
Installing:
 epel-release           noarch           7-11            extras            15 k

Transaction Summary
================================================================================
Install  1 Package

Total download size: 15 k
Installed size: 24 k
Downloading packages:
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : epel-release-7-11.noarch                                     1/1
  Verifying  : epel-release-7-11.noarch                                     1/1

Installed:
  epel-release.noarch 0:7-11

Complete!
[run_cmd@./runit.sh:14|22]+ rc=0
[run_cmd@./runit.sh:15|22]+ set +x
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  rpm -q epel-release
[run_cmd@./runit.sh:13|23]+ ssh root@kvm-01-guest10.lab.eng.brq2.redhat.com 'rpm -q epel-release'
epel-release-7-11.noarch
[run_cmd@./runit.sh:14|24]+ rc=0
[run_cmd@./runit.sh:15|24]+ set +x
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  rpm -ql epel-release
[run_cmd@./runit.sh:13|25]+ ssh root@kvm-01-guest10.lab.eng.brq2.redhat.com 'rpm -ql epel-release'
/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
/etc/yum.repos.d/epel-testing.repo
/etc/yum.repos.d/epel.repo
/usr/lib/systemd/system-preset/90-epel.preset
/usr/share/doc/epel-release-7
/usr/share/doc/epel-release-7/GPL
[run_cmd@./runit.sh:14|26]+ rc=0
[run_cmd@./runit.sh:15|26]+ set +x
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  ls -l /etc/yum.repos.d/*epel*.repo
[run_cmd@./runit.sh:13|27]+ ssh root@kvm-01-guest10.lab.eng.brq2.redhat.com 'ls -l /etc/yum.repos.d/*epel*.repo'
-rw-r--r--. 1 root root  951 Oct  2  2017 /etc/yum.repos.d/epel.repo
-rw-r--r--. 1 root root 1050 Oct  2  2017 /etc/yum.repos.d/epel-testing.repo
[run_cmd@./runit.sh:14|28]+ rc=0
[run_cmd@./runit.sh:15|28]+ set +x
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  cat -n /etc/yum.repos.d/epel.repo
[run_cmd@./runit.sh:13|28]+ ssh root@kvm-01-guest10.lab.eng.brq2.redhat.com 'cat -n /etc/yum.repos.d/epel.repo'
     1	[epel]
     2	name=Extra Packages for Enterprise Linux 7 - $basearch
     3	#baseurl=http://download.fedoraproject.org/pub/epel/7/$basearch
     4	metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=$basearch
     5	failovermethod=priority
     6	enabled=1
     7	gpgcheck=1
     8	gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
     9
    10	[epel-debuginfo]
    11	name=Extra Packages for Enterprise Linux 7 - $basearch - Debug
    12	#baseurl=http://download.fedoraproject.org/pub/epel/7/$basearch/debug
    13	metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-debug-7&arch=$basearch
    14	failovermethod=priority
    15	enabled=0
    16	gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
    17	gpgcheck=1
    18
    19	[epel-source]
    20	name=Extra Packages for Enterprise Linux 7 - $basearch - Source
    21	#baseurl=http://download.fedoraproject.org/pub/epel/7/SRPMS
    22	metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-source-7&arch=$basearch
    23	failovermethod=priority
    24	enabled=0
    25	gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
    26	gpgcheck=1
[run_cmd@./runit.sh:14|29]+ rc=0
[run_cmd@./runit.sh:15|29]+ set +x
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  cat -n /etc/yum.repos.d/epel-testing.repo
[run_cmd@./runit.sh:13|30]+ ssh root@kvm-01-guest10.lab.eng.brq2.redhat.com 'cat -n /etc/yum.repos.d/epel-testing.repo'
     1	[epel-testing]
     2	name=Extra Packages for Enterprise Linux 7 - Testing - $basearch
     3	#baseurl=http://download.fedoraproject.org/pub/epel/testing/7/$basearch
     4	metalink=https://mirrors.fedoraproject.org/metalink?repo=testing-epel7&arch=$basearch
     5	failovermethod=priority
     6	enabled=0
     7	gpgcheck=1
     8	gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
     9
    10	[epel-testing-debuginfo]
    11	name=Extra Packages for Enterprise Linux 7 - Testing - $basearch - Debug
    12	#baseurl=http://download.fedoraproject.org/pub/epel/testing/7/$basearch/debug
    13	metalink=https://mirrors.fedoraproject.org/metalink?repo=testing-debug-epel7&arch=$basearch
    14	failovermethod=priority
    15	enabled=0
    16	gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
    17	gpgcheck=1
    18
    19	[epel-testing-source]
    20	name=Extra Packages for Enterprise Linux 7 - Testing - $basearch - Source
    21	#baseurl=http://download.fedoraproject.org/pub/epel/testing/7/SRPMS
    22	metalink=https://mirrors.fedoraproject.org/metalink?repo=testing-source-epel7&arch=$basearch
    23	failovermethod=priority
    24	enabled=0
    25	gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
    26	gpgcheck=1
[run_cmd@./runit.sh:14|31]+ rc=0
[run_cmd@./runit.sh:15|31]+ set +x
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  yum provides yum-utils
[run_cmd@./runit.sh:13|32]+ ssh root@kvm-01-guest10.lab.eng.brq2.redhat.com 'yum provides yum-utils'
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: merlin.fit.vutbr.cz
 * epel: fedora.ipacct.com
 * extras: merlin.fit.vutbr.cz
 * updates: merlin.fit.vutbr.cz
yum-utils-1.1.31-54.el7_8.noarch : Utilities based around the yum package
                                 : manager
Repo        : base



yum-utils-1.1.31-54.el7_8.noarch : Utilities based around the yum package
                                 : manager
Repo        : beaker-distro



yum-utils-1.1.31-54.el7_8.noarch : Utilities based around the yum package
                                 : manager
Repo        : @base



[run_cmd@./runit.sh:14|33]+ rc=0
[run_cmd@./runit.sh:15|33]+ set +x
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  yum -y remove yum-utils
[run_cmd@./runit.sh:13|34]+ ssh root@kvm-01-guest10.lab.eng.brq2.redhat.com 'yum -y remove yum-utils'
Loaded plugins: fastestmirror
Resolving Dependencies
--> Running transaction check
---> Package yum-utils.noarch 0:1.1.31-54.el7_8 will be erased
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package           Arch           Version                   Repository     Size
================================================================================
Removing:
 yum-utils         noarch         1.1.31-54.el7_8           @base         337 k

Transaction Summary
================================================================================
Remove  1 Package

Installed size: 337 k
Downloading packages:
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Erasing    : yum-utils-1.1.31-54.el7_8.noarch                             1/1
  Verifying  : yum-utils-1.1.31-54.el7_8.noarch                             1/1

Removed:
  yum-utils.noarch 0:1.1.31-54.el7_8

Complete!
[run_cmd@./runit.sh:14|35]+ rc=0
[run_cmd@./runit.sh:15|35]+ set +x
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  yum -y install yum-utils
[run_cmd@./runit.sh:13|36]+ ssh root@kvm-01-guest10.lab.eng.brq2.redhat.com 'yum -y install yum-utils'
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: merlin.fit.vutbr.cz
 * epel: fedora.ipacct.com
 * extras: merlin.fit.vutbr.cz
 * updates: merlin.fit.vutbr.cz
Resolving Dependencies
--> Running transaction check
---> Package yum-utils.noarch 0:1.1.31-54.el7_8 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package           Arch           Version                    Repository    Size
================================================================================
Installing:
 yum-utils         noarch         1.1.31-54.el7_8            base         122 k

Transaction Summary
================================================================================
Install  1 Package

Total download size: 122 k
Installed size: 337 k
Downloading packages:
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : yum-utils-1.1.31-54.el7_8.noarch                             1/1
  Verifying  : yum-utils-1.1.31-54.el7_8.noarch                             1/1

Installed:
  yum-utils.noarch 0:1.1.31-54.el7_8

Complete!
[run_cmd@./runit.sh:14|39]+ rc=0
[run_cmd@./runit.sh:15|39]+ set +x
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  rpm -q yum-utils
[run_cmd@./runit.sh:13|39]+ ssh root@kvm-01-guest10.lab.eng.brq2.redhat.com 'rpm -q yum-utils'
yum-utils-1.1.31-54.el7_8.noarch
[run_cmd@./runit.sh:14|40]+ rc=0
[run_cmd@./runit.sh:15|40]+ set +x
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  rpm -ql yum-utils
[run_cmd@./runit.sh:13|41]+ ssh root@kvm-01-guest10.lab.eng.brq2.redhat.com 'rpm -ql yum-utils'
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
[run_cmd@./runit.sh:14|42]+ rc=0
[run_cmd@./runit.sh:15|42]+ set +x
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#  $?=0
root@kvm-01-guest10.lab.eng.brq2.redhat.com:/tmp >>>#
```

## 02 - repo files

## 02.1 - disable repos
```bash

CentOS 7#    yum-config-manager --disable  epel epel-debuginfo epel-source
Loaded plugins: fastestmirror

=================================================================== repo: epel ===================================================================
[epel]
async = True
bandwidth = 0
base_persistdir = /var/lib/yum/repos/x86_64/7
baseurl =
cache = 0
cachedir = /var/cache/yum/x86_64/7/epel
check_config_file_age = True
compare_providers_priority = 80
cost = 1000
deltarpm_metadata_percentage = 100
deltarpm_percentage =
enabled = False
enablegroups = True
exclude =
failovermethod = priority
ftp_disable_epsv = False
gpgcadir = /var/lib/yum/repos/x86_64/7/epel/gpgcadir
gpgcakey =
gpgcheck = True
gpgdir = /var/lib/yum/repos/x86_64/7/epel/gpgdir
gpgkey = file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
hdrdir = /var/cache/yum/x86_64/7/epel/headers
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
metalink = https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=x86_64
minrate = 0
mirrorlist =
mirrorlist_expire = 86400
name = Extra Packages for Enterprise Linux 7 - x86_64
old_base_cache_dir =
password =
persistdir = /var/lib/yum/repos/x86_64/7/epel
pkgdir = /var/cache/yum/x86_64/7/epel/packages
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
base_persistdir = /var/lib/yum/repos/x86_64/7
baseurl =
cache = 0
cachedir = /var/cache/yum/x86_64/7/epel-debuginfo
check_config_file_age = True
compare_providers_priority = 80
cost = 1000
deltarpm_metadata_percentage = 100
deltarpm_percentage =
enabled = False
enablegroups = True
exclude =
failovermethod = priority
ftp_disable_epsv = False
gpgcadir = /var/lib/yum/repos/x86_64/7/epel-debuginfo/gpgcadir
gpgcakey =
gpgcheck = True
gpgdir = /var/lib/yum/repos/x86_64/7/epel-debuginfo/gpgdir
gpgkey = file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
hdrdir = /var/cache/yum/x86_64/7/epel-debuginfo/headers
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
metalink = https://mirrors.fedoraproject.org/metalink?repo=epel-debug-7&arch=x86_64
minrate = 0
mirrorlist =
mirrorlist_expire = 86400
name = Extra Packages for Enterprise Linux 7 - x86_64 - Debug
old_base_cache_dir =
password =
persistdir = /var/lib/yum/repos/x86_64/7/epel-debuginfo
pkgdir = /var/cache/yum/x86_64/7/epel-debuginfo/packages
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
base_persistdir = /var/lib/yum/repos/x86_64/7
baseurl =
cache = 0
cachedir = /var/cache/yum/x86_64/7/epel-source
check_config_file_age = True
compare_providers_priority = 80
cost = 1000
deltarpm_metadata_percentage = 100
deltarpm_percentage =
enabled = False
enablegroups = True
exclude =
failovermethod = priority
ftp_disable_epsv = False
gpgcadir = /var/lib/yum/repos/x86_64/7/epel-source/gpgcadir
gpgcakey =
gpgcheck = True
gpgdir = /var/lib/yum/repos/x86_64/7/epel-source/gpgdir
gpgkey = file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
hdrdir = /var/cache/yum/x86_64/7/epel-source/headers
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
metalink = https://mirrors.fedoraproject.org/metalink?repo=epel-source-7&arch=x86_64
minrate = 0
mirrorlist =
mirrorlist_expire = 86400
name = Extra Packages for Enterprise Linux 7 - x86_64 - Source
old_base_cache_dir =
password =
persistdir = /var/lib/yum/repos/x86_64/7/epel-source
pkgdir = /var/cache/yum/x86_64/7/epel-source/packages
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

CentOS 7#
CentOS 7#
CentOS 7#    egrep  '^\[epel|^enabled=' /etc/yum.repos.d/epel.repo
[epel]
enabled=0
[epel-debuginfo]
enabled=0
[epel-source]
enabled=0
CentOS 7#    egrep  '^\[epel|^enabled=' /etc/yum.repos.d/epel.repo | \
             tr -s '\n' ';'
[epel];enabled=0;[epel-debuginfo];enabled=0;[epel-source];enabled=0;
CentOS 7#
CentOS 7#    egrep  '^\[epel|^enabled=' /etc/yum.repos.d/epel.repo | \
             tr -s '\n' ';' | sed 's%];% %g'
[epel enabled=0;[epel-debuginfo enabled=0;[epel-source enabled=0;
CentOS 7#
CentOS 7#    egrep  '^\[epel|^enabled=' /etc/yum.repos.d/epel.repo | \
             tr -s '\n' ';' | sed 's%];% %g' | sed 's%\[%%g'
epel enabled=0;epel-debuginfo enabled=0;epel-source enabled=0;
CentOS 7#
CentOS 7#    egrep  '^\[epel|^enabled=' /etc/yum.repos.d/epel.repo | \
             tr -s '\n' ';' | sed 's%];% %g' | sed 's%\[%%g' | tr ';' '\n'
epel enabled=0
epel-debuginfo enabled=0
epel-source enabled=0
CentOS 7#
CentOS 7#

CentOS 7#    yum repolist
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: merlin.fit.vutbr.cz
 * extras: merlin.fit.vutbr.cz
 * updates: merlin.fit.vutbr.cz
repo id                                                              repo name                                                              status
base/7/x86_64                                                        CentOS-7 - Base                                                        10,072
beaker-distro                                                        beaker-distro                                                          10,072
beaker-harness                                                       beaker-harness                                                            971
beaker-tasks                                                         beaker-tasks                                                           24,208
extras/7/x86_64                                                      CentOS-7 - Extras                                                         518
updates/7/x86_64                                                     CentOS-7 - Updates                                                      5,287
repolist: 51,128
CentOS 7#
```


## 02.2 - enable repos

```bash

CentOS 7#    yum-config-manager --enable epel epel-debuginfo epel-source
Loaded plugins: fastestmirror
=================================================================== repo: epel ===================================================================
[epel]
async = True
bandwidth = 0
base_persistdir = /var/lib/yum/repos/x86_64/7
baseurl =
cache = 0
cachedir = /var/cache/yum/x86_64/7/epel
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
gpgcadir = /var/lib/yum/repos/x86_64/7/epel/gpgcadir
gpgcakey =
gpgcheck = True
gpgdir = /var/lib/yum/repos/x86_64/7/epel/gpgdir
gpgkey = file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
hdrdir = /var/cache/yum/x86_64/7/epel/headers
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
metalink = https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=x86_64
minrate = 0
mirrorlist =
mirrorlist_expire = 86400
name = Extra Packages for Enterprise Linux 7 - x86_64
old_base_cache_dir =
password =
persistdir = /var/lib/yum/repos/x86_64/7/epel
pkgdir = /var/cache/yum/x86_64/7/epel/packages
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
base_persistdir = /var/lib/yum/repos/x86_64/7
baseurl =
cache = 0
cachedir = /var/cache/yum/x86_64/7/epel-debuginfo
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
gpgcadir = /var/lib/yum/repos/x86_64/7/epel-debuginfo/gpgcadir
gpgcakey =
gpgcheck = True
gpgdir = /var/lib/yum/repos/x86_64/7/epel-debuginfo/gpgdir
gpgkey = file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
hdrdir = /var/cache/yum/x86_64/7/epel-debuginfo/headers
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
metalink = https://mirrors.fedoraproject.org/metalink?repo=epel-debug-7&arch=x86_64
minrate = 0
mirrorlist =
mirrorlist_expire = 86400
name = Extra Packages for Enterprise Linux 7 - x86_64 - Debug
old_base_cache_dir =
password =
persistdir = /var/lib/yum/repos/x86_64/7/epel-debuginfo
pkgdir = /var/cache/yum/x86_64/7/epel-debuginfo/packages
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
base_persistdir = /var/lib/yum/repos/x86_64/7
baseurl =
cache = 0
cachedir = /var/cache/yum/x86_64/7/epel-source
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
gpgcadir = /var/lib/yum/repos/x86_64/7/epel-source/gpgcadir
gpgcakey =
gpgcheck = True
gpgdir = /var/lib/yum/repos/x86_64/7/epel-source/gpgdir
gpgkey = file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
hdrdir = /var/cache/yum/x86_64/7/epel-source/headers
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
metalink = https://mirrors.fedoraproject.org/metalink?repo=epel-source-7&arch=x86_64
minrate = 0
mirrorlist =
mirrorlist_expire = 86400
name = Extra Packages for Enterprise Linux 7 - x86_64 - Source
old_base_cache_dir =
password =
persistdir = /var/lib/yum/repos/x86_64/7/epel-source
pkgdir = /var/cache/yum/x86_64/7/epel-source/packages
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

CentOS 7#
CentOS 7#    egrep  '^\[epel|^enabled=' /etc/yum.repos.d/epel.repo | \
             tr -s '\n' ';'
[epel];enabled=1;[epel-debuginfo];enabled=1;[epel-source];enabled=1;
CentOS 7#
CentOS 7#    egrep  '^\[epel|^enabled=' /etc/yum.repos.d/epel.repo | \
             tr -s '\n' ';' | sed 's%];% %g'
[epel enabled=1;[epel-debuginfo enabled=1;[epel-source enabled=1;
CentOS 7#
CentOS 7#    egrep  '^\[epel|^enabled=' /etc/yum.repos.d/epel.repo | \
             tr -s '\n' ';' | sed 's%];% %g' | sed 's%\[%%g'
epel enabled=1;epel-debuginfo enabled=1;epel-source enabled=1;
CentOS 7#
CentOS 7#    egrep  '^\[epel|^enabled=' /etc/yum.repos.d/epel.repo | \
             tr -s '\n' ';' | sed 's%];% %g' | sed 's%\[%%g' | tr ';' '\n'
epel enabled=1
epel-debuginfo enabled=1
epel-source enabled=1
CentOS 7#
CentOS 7#
CentOS 7#
CentOS 7#    yum repolist
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: merlin.fit.vutbr.cz
 * epel: fedora.ipacct.com
 * epel-debuginfo: mirror.karneval.cz
 * epel-source: mirror.karneval.cz
 * extras: merlin.fit.vutbr.cz
 * updates: merlin.fit.vutbr.cz
repo id                                              repo name                                                                              status
base/7/x86_64                                        CentOS-7 - Base                                                                        10,072
beaker-distro                                        beaker-distro                                                                          10,072
beaker-harness                                       beaker-harness                                                                            971
beaker-tasks                                         beaker-tasks                                                                           24,208
epel/x86_64                                          Extra Packages for Enterprise Linux 7 - x86_64                                         13,770
!epel-debuginfo/x86_64                               Extra Packages for Enterprise Linux 7 - x86_64 - Debug                                  2,907
!epel-source/x86_64                                  Extra Packages for Enterprise Linux 7 - x86_64 - Source                                     0
extras/7/x86_64                                      CentOS-7 - Extras                                                                         518
updates/7/x86_64                                     CentOS-7 - Updates                                                                      5,287
repolist: 67,805
CentOS 7#
```
