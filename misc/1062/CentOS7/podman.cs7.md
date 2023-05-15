```bash


huanli@kvm-01-guest10:~$ podman run --rm -it --name centos7 centos:centos7
[root@fd626082bcfb /]#
[root@fd626082bcfb /]#
[root@fd626082bcfb /]# cat /etc/*release | grep -E PRETTY
PRETTY_NAME="CentOS Linux 7 (Core)"
[root@fd626082bcfb /]#
[root@fd626082bcfb /]# yum --version
3.4.3
  Installed: rpm-4.11.3-45.el7.x86_64 at 2020-11-13 01:54
  Built    : CentOS BuildSystem <http://bugs.centos.org> at 2020-09-30 17:30
  Committed: Michal Domonkos <mdomonko@redhat.com> at 2020-06-02

  Installed: yum-3.4.3-168.el7.centos.noarch at 2020-11-13 01:54
  Built    : CentOS BuildSystem <http://bugs.centos.org> at 2020-10-01 17:03
  Committed: CentOS Sources <bugs@centos.org> at 2020-09-29

  Installed: yum-plugin-fastestmirror-1.1.31-54.el7_8.noarch at 2020-11-13 01:54
  Built    : CentOS BuildSystem <http://bugs.centos.org> at 2020-05-12 16:27
  Committed: Michal Domonkos <mdomonko@redhat.com> at 2020-03-12
[root@fd626082bcfb /]#
[root@fd626082bcfb /]# rpm -q yum-utils
yum-utils-1.1.31-54.el7_8.noarch
[root@fd626082bcfb /]# rpm -q epel-release
package epel-release is not installed
[root@fd626082bcfb /]# yum -y install epel-release > /tmp/a 2>&1
[root@fd626082bcfb /]#
[root@fd626082bcfb /]# rpm -q epel-release
epel-release-7-11.noarch
[root@fd626082bcfb /]#
[root@fd626082bcfb /]#
[root@fd626082bcfb /]# yum -y install epel-next-release
Loaded plugins: fastestmirror, ovl
Loading mirror speeds from cached hostfile
epel/x86_64/metalink                                                                                                       |  31 kB  00:00:00
 * base: merlin.fit.vutbr.cz
 * epel: mirrors.nic.cz
 * extras: merlin.fit.vutbr.cz
 * updates: merlin.fit.vutbr.cz
epel                                                                                                                       | 4.7 kB  00:00:00
(1/3): epel/x86_64/primary_db                                                                                              | 7.0 MB  00:00:00
(2/3): epel/x86_64/group_gz                                                                                                |  99 kB  00:00:00
(3/3): epel/x86_64/updateinfo                                                                                              | 1.0 MB  00:00:00
No package epel-next-release available.
Error: Nothing to do
[root@fd626082bcfb /]#
[root@fd626082bcfb /]# grep -E '\[epel' /etc/yum.repos.d/epel.repo
[epel]
[epel-debuginfo]
[epel-source]
[root@fd626082bcfb /]#
[root@fd626082bcfb /]# grep 'enabled=' /etc/yum.repos.d/epel.repo
enabled=1
enabled=0
enabled=0
[root@fd626082bcfb /]#
[root@fd626082bcfb /]# yum-config-manager --enable epel epel-debuginfo epel-source
Loaded plugins: fastestmirror, ovl
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
enabled = True
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

[root@fd626082bcfb /]#
[root@fd626082bcfb /]# grep 'enabled=' /etc/yum.repos.d/epel.repo
enabled=1
enabled=1
enabled=1
[root@fd626082bcfb /]#
[root@fd626082bcfb /]#
[root@fd626082bcfb /]# exit
exit
huanli@kvm-01-guest10:~$
```
