```bash
huanli@kvm-01-guest10:~$ podman run --rm -it --name c9s centos:stream9
[root@deb00a3cdd85 /]#
[root@deb00a3cdd85 /]# cat /etc/*release | grep -E PRETTY
PRETTY_NAME="CentOS Stream 9"
[root@deb00a3cdd85 /]#
[root@deb00a3cdd85 /]# dnf --version
4.14.0
  Installed: dnf-0:4.14.0-8.el9.noarch at Mon Oct 16 04:10:04 2023
  Built    : builder@centos.org at Thu Jun 29 08:27:49 2023

  Installed: rpm-0:4.16.1.3-25.el9.x86_64 at Mon Oct 16 04:10:02 2023
  Built    : builder@centos.org at Fri Jun 30 14:49:47 2023
[root@deb00a3cdd85 /]#
[root@deb00a3cdd85 /]# rpm -q epel-release epel-next-release
package epel-release is not installed
package epel-next-release is not installed
[root@deb00a3cdd85 /]# dnf -y install epel-release epel-next-release  > /tmp/a 2>&1


[root@deb00a3cdd85 /]#
[root@deb00a3cdd85 /]#
[root@deb00a3cdd85 /]# rpm -q epel-release epel-next-release
epel-release-9-7.el9.noarch
epel-next-release-9-7.el9.noarch
[root@deb00a3cdd85 /]#
[root@deb00a3cdd85 /]# grep -E '\[epel' /etc/yum.repos.d/epel.repo
[epel]
[epel-debuginfo]
[epel-source]
[root@deb00a3cdd85 /]#
[root@deb00a3cdd85 /]# grep -E '\[epel' /etc/yum.repos.d/epel-next.repo
[epel-next]
[epel-next-debuginfo]
[epel-next-source]
[root@deb00a3cdd85 /]#
[root@deb00a3cdd85 /]# grep 'enabled=' /etc/yum.repos.d/epel.repo
enabled=1
enabled=0
enabled=0
[root@deb00a3cdd85 /]#
[root@deb00a3cdd85 /]# grep 'enabled='  /etc/yum.repos.d/epel-next.repo
enabled=1
enabled=0
enabled=0
[root@deb00a3cdd85 /]#
[root@deb00a3cdd85 /]# dnf config-manager --enable epel epel-debuginfo epel-source
[root@deb00a3cdd85 /]#
[root@deb00a3cdd85 /]# grep 'enabled=' /etc/yum.repos.d/epel.repo
enabled=1
enabled=1
enabled=1
[root@deb00a3cdd85 /]# dnf config-manager --enable epel-next epel-next-debuginfo  epel-next-source
[root@deb00a3cdd85 /]#
[root@deb00a3cdd85 /]# grep 'enabled='  /etc/yum.repos.d/epel-next.repo
enabled=1
enabled=1
enabled=1
[root@deb00a3cdd85 /]#
[root@deb00a3cdd85 /]# exit
exit
huanli@kvm-01-guest10:~$
```
