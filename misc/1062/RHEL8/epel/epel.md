# EPEL on RHEL 8

## 1 - packages

```bash
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  date
[run_cmd@./runit.sh:16|0]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com date
Mon Oct  9 02:44:04 EDT 2023
[run_cmd@./runit.sh:17|1]+ rc=0
[run_cmd@./runit.sh:18|1]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  hostname
[run_cmd@./runit.sh:16|2]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com hostname
kvm-03-guest26.hv2.lab.eng.bos.redhat.com
[run_cmd@./runit.sh:17|2]+ rc=0
[run_cmd@./runit.sh:18|2]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  uname -a
[run_cmd@./runit.sh:16|3]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'uname -a'
Linux kvm-03-guest26.hv2.lab.eng.bos.redhat.com 4.18.0-477.27.1.el8_8.x86_64 #1 SMP Thu Aug 31 10:29:22 EDT 2023 x86_64 x86_64 x86_64 GNU/Linux
[run_cmd@./runit.sh:17|4]+ rc=0
[run_cmd@./runit.sh:18|4]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  dnf provides epel-release
[run_cmd@./runit.sh:16|5]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'dnf provides epel-release'
Updating Subscription Management repositories.
Unable to read consumer identity

This system is not registered with an entitlement server. You can use subscription-manager to register.

Last metadata expiration check: 3:50:30 ago on Sun 08 Oct 2023 10:53:39 PM EDT.
epel-release-8-19.el8.noarch : Extra Packages for Enterprise Linux repository configuration
Repo        : @System
Matched from:
Provide    : epel-release = 8-19.el8

epel-release-8-19.el8.noarch : Extra Packages for Enterprise Linux repository configuration
Repo        : epel
Matched from:
Provide    : epel-release = 8-19.el8

[run_cmd@./runit.sh:17|8]+ rc=0
[run_cmd@./runit.sh:18|8]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  dnf provides epel-next-release
[run_cmd@./runit.sh:16|8]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'dnf provides epel-next-release'
Updating Subscription Management repositories.
Unable to read consumer identity

This system is not registered with an entitlement server. You can use subscription-manager to register.

Last metadata expiration check: 3:50:34 ago on Sun 08 Oct 2023 10:53:39 PM EDT.
epel-next-release-8-19.el8.noarch : Extra Packages for Enterprise Linux Next repository configuration
Repo        : @System
Matched from:
Provide    : epel-next-release = 8-19.el8

epel-next-release-8-19.el8.noarch : Extra Packages for Enterprise Linux Next repository configuration
Repo        : epel
Matched from:
Provide    : epel-next-release = 8-19.el8

[run_cmd@./runit.sh:17|11]+ rc=0
[run_cmd@./runit.sh:18|11]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  dnf -y remove epel-release
[run_cmd@./runit.sh:16|12]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'dnf -y remove epel-release'
Updating Subscription Management repositories.
Unable to read consumer identity

This system is not registered with an entitlement server. You can use subscription-manager to register.

Dependencies resolved.
================================================================================
 Package                 Architecture Version         Repository           Size
================================================================================
Removing:
 epel-release            noarch       8-19.el8        @@commandline        35 k
Removing dependent packages:
 epel-next-release       noarch       8-19.el8        @@commandline       2.8 k

Transaction Summary
================================================================================
Remove  2 Packages

Freed space: 37 k
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                        1/1 
  Running scriptlet: epel-next-release-8-19.el8.noarch                      1/1 
  Erasing          : epel-next-release-8-19.el8.noarch                      1/2 
  Erasing          : epel-release-8-19.el8.noarch                           2/2 
  Running scriptlet: epel-release-8-19.el8.noarch                           2/2 
  Verifying        : epel-next-release-8-19.el8.noarch                      1/2 
  Verifying        : epel-release-8-19.el8.noarch                           2/2 
Installed products updated.

Removed:
  epel-next-release-8-19.el8.noarch         epel-release-8-19.el8.noarch        

Complete!
[run_cmd@./runit.sh:17|14]+ rc=0
[run_cmd@./runit.sh:18|14]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
[run_cmd@./runit.sh:16|15]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm'
Updating Subscription Management repositories.
Unable to read consumer identity

This system is not registered with an entitlement server. You can use subscription-manager to register.

Last metadata expiration check: 3:50:41 ago on Sun 08 Oct 2023 10:53:38 PM EDT.
epel-release-latest-8.noarch.rpm                166 kB/s |  25 kB     00:00    
Dependencies resolved.
================================================================================
 Package             Architecture  Version            Repository           Size
================================================================================
Installing:
 epel-release        noarch        8-19.el8           @commandline         25 k

Transaction Summary
================================================================================
Install  1 Package

Total size: 25 k
Installed size: 35 k
Downloading Packages:
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                        1/1 
  Installing       : epel-release-8-19.el8.noarch                           1/1 
  Running scriptlet: epel-release-8-19.el8.noarch                           1/1 
Many EPEL packages require the CodeReady Builder (CRB) repository.
It is recommended that you run /usr/bin/crb enable to enable the CRB repository.

  Verifying        : epel-release-8-19.el8.noarch                           1/1 
Installed products updated.

Installed:
  epel-release-8-19.el8.noarch                                                  

Complete!
[run_cmd@./runit.sh:17|19]+ rc=0
[run_cmd@./runit.sh:18|19]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  rpm -q epel-release
[run_cmd@./runit.sh:16|19]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'rpm -q epel-release'
epel-release-8-19.el8.noarch
[run_cmd@./runit.sh:17|20]+ rc=0
[run_cmd@./runit.sh:18|20]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  rpm -ql epel-release
[run_cmd@./runit.sh:16|21]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'rpm -ql epel-release'
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
[run_cmd@./runit.sh:17|22]+ rc=0
[run_cmd@./runit.sh:18|22]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  ls -l /etc/yum.repos.d/*epel*.repo
[run_cmd@./runit.sh:16|22]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'ls -l /etc/yum.repos.d/*epel*.repo'
-rw-r--r--. 1 root root 1680 Apr 17 09:22 /etc/yum.repos.d/epel-modular.repo
-rw-r--r--. 1 root root 1332 Apr 17 09:22 /etc/yum.repos.d/epel.repo
-rw-r--r--. 1 root root 1779 Apr 17 09:22 /etc/yum.repos.d/epel-testing-modular.repo
-rw-r--r--. 1 root root 1431 Apr 17 09:22 /etc/yum.repos.d/epel-testing.repo
[run_cmd@./runit.sh:17|23]+ rc=0
[run_cmd@./runit.sh:18|23]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  cat /etc/yum.repos.d/epel.repo
[run_cmd@./runit.sh:16|24]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'cat /etc/yum.repos.d/epel.repo'
[epel]
name=Extra Packages for Enterprise Linux 8 - $basearch
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place its address here.
#baseurl=https://download.example/pub/epel/8/Everything/$basearch
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-8&arch=$basearch&infra=$infra&content=$contentdir
enabled=1
gpgcheck=1
countme=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8

[epel-debuginfo]
name=Extra Packages for Enterprise Linux 8 - $basearch - Debug
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place its address here.
#baseurl=https://download.example/pub/epel/8/Everything/$basearch/debug
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-debug-8&arch=$basearch&infra=$infra&content=$contentdir
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8
gpgcheck=1

[epel-source]
name=Extra Packages for Enterprise Linux 8 - $basearch - Source
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place it's address here.
#baseurl=https://download.example/pub/epel/8/Everything/source/tree/
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-source-8&arch=$basearch&infra=$infra&content=$contentdir
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8
gpgcheck=1
[run_cmd@./runit.sh:17|24]+ rc=0
[run_cmd@./runit.sh:18|24]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  cat /etc/yum.repos.d/epel-modular.repo
[run_cmd@./runit.sh:16|25]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'cat /etc/yum.repos.d/epel-modular.repo'
[epel-modular]
# This repo has been RETIRED, see https://pagure.io/epel/issue/198 for more details.
name=Extra Packages for Enterprise Linux Modular 8 - $basearch - RETIRED
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place its address here.
#baseurl=https://download.example/pub/epel/8/Modular/$basearch
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-modular-8&arch=$basearch&infra=$infra&content=$contentdir
enabled=0
gpgcheck=1
countme=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8

[epel-modular-debuginfo]
# This repo has been RETIRED, see https://pagure.io/epel/issue/198 for more details.
name=Extra Packages for Enterprise Linux Modular 8 - $basearch - Debug - RETIRED
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place its address here.
#baseurl=https://download.example/pub/epel/8/Modular/$basearch/debug
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-modular-debug-8&arch=$basearch&infra=$infra&content=$contentdir
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8
gpgcheck=1

[epel-modular-source]
# This repo has been RETIRED, see https://pagure.io/epel/issue/198 for more details.
name=Extra Packages for Enterprise Linux Modular 8 - $basearch - Source - RETIRED
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place it's address here.
#baseurl=https://download.example/pub/epel/8/Modular/source/tree/
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-modular-source-8&arch=$basearch&infra=$infra&content=$contentdir
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8
gpgcheck=1
[run_cmd@./runit.sh:17|26]+ rc=0
[run_cmd@./runit.sh:18|26]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  cat /etc/yum.repos.d/epel-testing.repo
[run_cmd@./runit.sh:16|27]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'cat /etc/yum.repos.d/epel-testing.repo'
[epel-testing]
name=Extra Packages for Enterprise Linux 8 - Testing - $basearch
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place its address here.
#baseurl=https://download.example/pub/epel/testing/8/Everything/$basearch
metalink=https://mirrors.fedoraproject.org/metalink?repo=testing-epel8&arch=$basearch&infra=$infra&content=$contentdir
enabled=0
gpgcheck=1
countme=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8

[epel-testing-debuginfo]
name=Extra Packages for Enterprise Linux 8 - Testing - $basearch - Debug
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place its address here.
#baseurl=https://download.example/pub/epel/testing/8/Everything/$basearch/debug
metalink=https://mirrors.fedoraproject.org/metalink?repo=testing-debug-epel8&arch=$basearch&infra=$infra&content=$contentdir
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8
gpgcheck=1

[epel-testing-source]
name=Extra Packages for Enterprise Linux 8 - Testing - $basearch - Source
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place it's address here.
#baseurl=https://download.example/pub/epel/testing/8/Everything/source/tree/
metalink=https://mirrors.fedoraproject.org/metalink?repo=testing-source-epel8&arch=$basearch&infra=$infra&content=$contentdir
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8
gpgcheck=1
[run_cmd@./runit.sh:17|27]+ rc=0
[run_cmd@./runit.sh:18|27]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  cat /etc/yum.repos.d/epel.repo
[run_cmd@./runit.sh:16|28]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'cat /etc/yum.repos.d/epel.repo'
[epel]
name=Extra Packages for Enterprise Linux 8 - $basearch
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place its address here.
#baseurl=https://download.example/pub/epel/8/Everything/$basearch
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-8&arch=$basearch&infra=$infra&content=$contentdir
enabled=1
gpgcheck=1
countme=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8

[epel-debuginfo]
name=Extra Packages for Enterprise Linux 8 - $basearch - Debug
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place its address here.
#baseurl=https://download.example/pub/epel/8/Everything/$basearch/debug
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-debug-8&arch=$basearch&infra=$infra&content=$contentdir
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8
gpgcheck=1

[epel-source]
name=Extra Packages for Enterprise Linux 8 - $basearch - Source
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place it's address here.
#baseurl=https://download.example/pub/epel/8/Everything/source/tree/
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-source-8&arch=$basearch&infra=$infra&content=$contentdir
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8
gpgcheck=1
[run_cmd@./runit.sh:17|29]+ rc=0
[run_cmd@./runit.sh:18|29]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  dnf -y remove epel-next-release
[run_cmd@./runit.sh:16|29]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'dnf -y remove epel-next-release'
Updating Subscription Management repositories.
Unable to read consumer identity

This system is not registered with an entitlement server. You can use subscription-manager to register.

No match for argument: epel-next-release
Dependencies resolved.
Nothing to do.
Complete!
No packages marked for removal.
[run_cmd@./runit.sh:17|31]+ rc=0
[run_cmd@./runit.sh:18|31]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  dnf -y install https://dl.fedoraproject.org/pub/epel/epel-next-release-latest-8.noarch.rpm
[run_cmd@./runit.sh:16|32]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'dnf -y install https://dl.fedoraproject.org/pub/epel/epel-next-release-latest-8.noarch.rpm'
Updating Subscription Management repositories.
Unable to read consumer identity

This system is not registered with an entitlement server. You can use subscription-manager to register.

Last metadata expiration check: 3:50:57 ago on Sun 08 Oct 2023 10:53:39 PM EDT.
epel-next-release-latest-8.noarch.rpm            74 kB/s |  11 kB     00:00    
Dependencies resolved.
================================================================================
 Package                 Architecture Version          Repository          Size
================================================================================
Installing:
 epel-next-release       noarch       8-19.el8         @commandline        11 k

Transaction Summary
================================================================================
Install  1 Package

Total size: 11 k
Installed size: 2.8 k
Downloading Packages:
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                        1/1 
  Installing       : epel-next-release-8-19.el8.noarch                      1/1 
  Verifying        : epel-next-release-8-19.el8.noarch                      1/1 
Installed products updated.

Installed:
  epel-next-release-8-19.el8.noarch                                             

Complete!
[run_cmd@./runit.sh:17|35]+ rc=0
[run_cmd@./runit.sh:18|35]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  rpm -q epel-next-release
[run_cmd@./runit.sh:16|36]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'rpm -q epel-next-release'
epel-next-release-8-19.el8.noarch
[run_cmd@./runit.sh:17|37]+ rc=0
[run_cmd@./runit.sh:18|37]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  rpm -ql epel-next-release
[run_cmd@./runit.sh:16|38]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'rpm -ql epel-next-release'
/etc/yum.repos.d/epel-next-testing.repo
/etc/yum.repos.d/epel-next.repo
[run_cmd@./runit.sh:17|38]+ rc=0
[run_cmd@./runit.sh:18|38]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  ls -l /etc/yum.repos.d/*epel*.repo
[run_cmd@./runit.sh:16|39]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'ls -l /etc/yum.repos.d/*epel*.repo'
-rw-r--r--. 1 root root 1680 Apr 17 09:22 /etc/yum.repos.d/epel-modular.repo
-rw-r--r--. 1 root root 1400 Apr 17 09:22 /etc/yum.repos.d/epel-next.repo
-rw-r--r--. 1 root root 1502 Apr 17 09:22 /etc/yum.repos.d/epel-next-testing.repo
-rw-r--r--. 1 root root 1332 Apr 17 09:22 /etc/yum.repos.d/epel.repo
-rw-r--r--. 1 root root 1779 Apr 17 09:22 /etc/yum.repos.d/epel-testing-modular.repo
-rw-r--r--. 1 root root 1431 Apr 17 09:22 /etc/yum.repos.d/epel-testing.repo
[run_cmd@./runit.sh:17|40]+ rc=0
[run_cmd@./runit.sh:18|40]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  cat /etc/yum.repos.d/epel-next.repo
[run_cmd@./runit.sh:16|40]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'cat /etc/yum.repos.d/epel-next.repo'
[epel-next]
name=Extra Packages for Enterprise Linux 8 - Next - $basearch
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place its address here.
#baseurl=https://download.example/pub/epel/next/8/Everything/$basearch/
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-next-8&arch=$basearch&infra=$infra&content=$contentdir
enabled=1
gpgcheck=1
countme=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8

[epel-next-debuginfo]
name=Extra Packages for Enterprise Linux 8 - Next - $basearch - Debug
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place its address here.
#baseurl=https://download.example/pub/epel/next/8/Everything/$basearch/debug/
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-next-debug-8&arch=$basearch&infra=$infra&content=$contentdir
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8
gpgcheck=1

[epel-next-source]
name=Extra Packages for Enterprise Linux 8 - Next - $basearch - Source
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place it's address here.
#baseurl=https://download.example/pub/epel/next/8/Everything/source/tree/
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-next-source-8&arch=$basearch&infra=$infra&content=$contentdir
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8
gpgcheck=1
[run_cmd@./runit.sh:17|41]+ rc=0
[run_cmd@./runit.sh:18|41]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  cat /etc/yum.repos.d/epel-next-testing.repo
[run_cmd@./runit.sh:16|42]+ ssh root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com 'cat /etc/yum.repos.d/epel-next-testing.repo'
[epel-next-testing]
name=Extra Packages for Enterprise Linux 8 - Next - Testing - $basearch
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place its address here.
#baseurl=https://download.example/pub/epel/testing/next/8/Everything/$basearch/
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-testing-next-8&arch=$basearch&infra=$infra&content=$contentdir
enabled=0
gpgcheck=1
countme=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8

[epel-next-testing-debuginfo]
name=Extra Packages for Enterprise Linux 8 - Next - Testing - $basearch - Debug
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place its address here.
#baseurl=https://download.example/pub/epel/testing/next/8/Everything/$basearch/debug/
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-testing-next-debug-8&arch=$basearch&infra=$infra&content=$contentdir
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8
gpgcheck=1

[epel-next-testing-source]
name=Extra Packages for Enterprise Linux 8 - Next - Testing - $basearch - Source
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place it's address here.
#baseurl=https://download.example/pub/epel/testing/next/8/Everything/source/tree/
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-testing-next-source-8&arch=$basearch&infra=$infra&content=$contentdir
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8
gpgcheck=1
[run_cmd@./runit.sh:17|43]+ rc=0
[run_cmd@./runit.sh:18|43]+ set +x
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>>#  $?=0
root@kvm-03-guest26.hv2.lab.eng.bos.redhat.com:/tmp >>># 
```

## 2 - OP repo files

```bash
RHEL8#  dnf repolist --all epel epel-debuginfo epel-source
Updating Subscription Management repositories.
Unable to read consumer identity

This system is not registered with an entitlement server. You can use subscription-manager to register.

repo id                                         repo name                                                                                 status
epel                                            Extra Packages for Enterprise Linux 8 - x86_64                                            disabled
epel-debuginfo                                  Extra Packages for Enterprise Linux 8 - x86_64 - Debug                                    disabled
epel-source                                     Extra Packages for Enterprise Linux 8 - x86_64 - Source                                   disabled
RHEL8#  dnf config-manager --enable epel epel-debuginfo epel-source
Updating Subscription Management repositories.
Unable to read consumer identity

This system is not registered with an entitlement server. You can use subscription-manager to register.

RHEL8#  dnf repolist --all epel epel-debuginfo epel-source
Updating Subscription Management repositories.
Unable to read consumer identity

This system is not registered with an entitlement server. You can use subscription-manager to register.

repo id                                          repo name                                                                                 status
epel                                             Extra Packages for Enterprise Linux 8 - x86_64                                            enabled
epel-debuginfo                                   Extra Packages for Enterprise Linux 8 - x86_64 - Debug                                    enabled
epel-source                                      Extra Packages for Enterprise Linux 8 - x86_64 - Source                                   enabled
RHEL8#
RHEL8#  dnf config-manager --disable epel epel-debuginfo epel-source
Updating Subscription Management repositories.
Unable to read consumer identity

This system is not registered with an entitlement server. You can use subscription-manager to register.

RHEL8#
RHEL8#
RHEL8#  dnf repolist --all epel epel-debuginfo epel-source
Updating Subscription Management repositories.
Unable to read consumer identity

This system is not registered with an entitlement server. You can use subscription-manager to register.

repo id                                         repo name                                                                                 status
epel                                            Extra Packages for Enterprise Linux 8 - x86_64                                            disabled
epel-debuginfo                                  Extra Packages for Enterprise Linux 8 - x86_64 - Debug                                    disabled
epel-source                                     Extra Packages for Enterprise Linux 8 - x86_64 - Source                                   disabled
RHEL8#
RHEL8#  dnf config-manager --enable epel epel-debuginfo epel-source
Updating Subscription Management repositories.
Unable to read consumer identity

This system is not registered with an entitlement server. You can use subscription-manager to register.

RHEL8#  dnf repolist --all epel epel-debuginfo epel-source
Updating Subscription Management repositories.
Unable to read consumer identity

This system is not registered with an entitlement server. You can use subscription-manager to register.

repo id                                          repo name                                                                                 status
epel                                             Extra Packages for Enterprise Linux 8 - x86_64                                            enabled
epel-debuginfo                                   Extra Packages for Enterprise Linux 8 - x86_64 - Debug                                    enabled
epel-source                                      Extra Packages for Enterprise Linux 8 - x86_64 - Source                                   enabled
RHEL8#
```
