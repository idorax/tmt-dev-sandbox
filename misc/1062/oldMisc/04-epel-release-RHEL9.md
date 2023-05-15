```bash
# https://docs.fedoraproject.org/en-US/epel/#_quickstart

[root@kvm-01-guest18 ~]# uname -a
Linux kvm-01-guest18.lab.eng.rdu2.redhat.com 5.14.0-312.el9.x86_64 #1 SMP PREEMPT_DYNAMIC Thu May 11 14:44:20 EDT 2023 x86_64 x86_64 x86_64 GNU/Linux
[root@kvm-01-guest18 ~]# 
[root@kvm-01-guest18 ~]# ls -l /etc/*release
lrwxrwxrwx. 1 root root 21 Jan 19 09:29 /etc/os-release -> ../usr/lib/os-release
-rw-r--r--. 1 root root 49 Jan 19 09:29 /etc/redhat-release
lrwxrwxrwx. 1 root root 14 Jan 19 09:29 /etc/system-release -> redhat-release
[root@kvm-01-guest18 ~]# 
[root@kvm-01-guest18 ~]# cat /etc/os-release
NAME="Red Hat Enterprise Linux"
VERSION="9.3 (Plow)"
ID="rhel"
ID_LIKE="fedora"
VERSION_ID="9.3"
PLATFORM_ID="platform:el9"
PRETTY_NAME="Red Hat Enterprise Linux 9.3 Beta (Plow)"
ANSI_COLOR="0;31"
LOGO="fedora-logo-icon"
CPE_NAME="cpe:/o:redhat:enterprise_linux:9::baseos"
HOME_URL="https://www.redhat.com/"
DOCUMENTATION_URL="https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/9"
BUG_REPORT_URL="https://bugzilla.redhat.com/"

REDHAT_BUGZILLA_PRODUCT="Red Hat Enterprise Linux 9"
REDHAT_BUGZILLA_PRODUCT_VERSION=9.3
REDHAT_SUPPORT_PRODUCT="Red Hat Enterprise Linux"
REDHAT_SUPPORT_PRODUCT_VERSION="9.3 Beta"
[root@kvm-01-guest18 ~]# 
[root@kvm-01-guest18 ~]# cat /etc/redhat-release
Red Hat Enterprise Linux release 9.3 Beta (Plow)
[root@kvm-01-guest18 ~]# 
[root@kvm-01-guest18 ~]# cat /etc/system-release
Red Hat Enterprise Linux release 9.3 Beta (Plow)
[root@kvm-01-guest18 ~]# 
[root@kvm-01-guest18 ~]# rpm -q epel-release
package epel-release is not installed
[root@kvm-01-guest18 ~]# 
[root@kvm-01-guest18 ~]# subscription-manager repos --enable codeready-builder-for-rhel-9-$(arch)-rpms
This system has no repositories available through subscriptions.
[root@kvm-01-guest18 ~]# 
[root@kvm-01-guest18 ~]# dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm
Updating Subscription Management repositories.
Unable to read consumer identity

This system is not registered with an entitlement server. You can use subscription-manager to register.

Last metadata expiration check: 0:33:13 ago on Mon 15 May 2023 10:43:40 AM EDT.
epel-release-latest-9.noarch.rpm                                                                                  173 kB/s |  18 kB     00:00    
Dependencies resolved.
==================================================================================================================================================
 Package                              Architecture                   Version                           Repository                            Size
==================================================================================================================================================
Installing:
 epel-release                         noarch                         9-5.el9                           @commandline                          18 k

Transaction Summary
==================================================================================================================================================
Install  1 Package

Total size: 18 k
Installed size: 25 k
Downloading Packages:
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                          1/1 
  Installing       : epel-release-9-5.el9.noarch                                                                                              1/1 
  Running scriptlet: epel-release-9-5.el9.noarch                                                                                              1/1 
Many EPEL packages require the CodeReady Builder (CRB) repository.
It is recommended that you run /usr/bin/crb enable to enable the CRB repository.

  Verifying        : epel-release-9-5.el9.noarch                                                                                              1/1 
Installed products updated.

Installed:
  epel-release-9-5.el9.noarch                                                                                                                     

Complete!
[root@kvm-01-guest18 ~]# 
[root@kvm-01-guest18 ~]# rpm -q epel-release
epel-release-9-5.el9.noarch
[root@kvm-01-guest18 ~]# 
[root@kvm-01-guest18 ~]# rpm -ql epel-release
/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-9
/etc/yum.repos.d/epel-testing.repo
/etc/yum.repos.d/epel.repo
/usr/bin/crb
/usr/lib/systemd/system-preset/90-epel.preset
/usr/share/licenses/epel-release
/usr/share/licenses/epel-release/GPL
[root@kvm-01-guest18 ~]# man crb
No manual entry for crb
[root@kvm-01-guest18 ~]# file /usr/bin/crb
/usr/bin/crb: Bourne-Again shell script, ASCII text executable
[root@kvm-01-guest18 ~]# cat /usr/bin/crb
#!/usr/bin/bash
#  Enable / Disable / Status the codeready-builder(CRB) or equivalent repo.

###############
# Show help
###############
usage() {
  echo "Usage `basename $0` [ enable | disable | status ] " >&2
  echo >&2
  echo "Enable, Disable, or give the status of the CodeReady Builder (CRB) repo" >&2
  echo >&2
  echo "Options:" >&2
  echo "  enable" >&2
  echo "    Enable the CRB repo" >&2
  echo "  disable" >&2
  echo "    Disable the CRB repo" >&2
  echo "  status" >&2
  echo "    Show if rhe CRB repo is enabled or disabled" >&2
  echo "  help" >&2
  echo "    Show this options menu" >&2
  echo >&2
  popd &>/dev/null
  exit 1
}


# Show the status
show_status()(
    # Determine if a version of CRB is enabled
    crb_repo=$(dnf repolist | grep -i -e crb -e powertools -e codeready | grep -v -i -e debug -e source -e eus -e virt | awk '{print $1}')
    if [ "${crb_repo}" == "" ] ; then
        echo "CRB repo is disabled"
    else
        echo "CRB repo is enabled and named: ${crb_repo}"
    fi
)

# Enable or Disable the repo
enable_disable_repo(){
    command="$1"
    # Determine which repo we need to change
    crb_repo=$(dnf repolist --all | grep -i -e crb -e powertools -e codeready | grep -v -i -e debug -e source -e eus -e virt | awk '{print $1}')

    # Determine if we are on RHEL or not, then do the correct steps
    source /etc/os-release
    if [[ "${NAME}" =~ "Red Hat" ]] ; then
        subscription-manager repos ${command} ${crb_repo}
    else
        # Determine if dnf-command(config-manager) is installed
        if ! rpm -q --whatprovides 'dnf-command(config-manager)' > /dev/null 2>&1 ; then
            echo "Error: Please run: dnf install 'dnf-command(config-manager)'" >&2
            echo "       before trying to enable/disable the CRB repo." >&2
            echo "Aborting"'!' >&2
            exit 1
        fi
        # Everything else uses dnf config-manager
        dnf config-manager ${command} ${crb_repo}
    fi
}

###############
# Get our arguments
###############
key="$1"
case $key in
enable | --enable )
    echo "Enabling CRB repo"
    enable_disable_repo --enable
    show_status
;;
disable | --disable )
    echo "Disabling CRB repo"
    enable_disable_repo --disable
    show_status
;;
status | --status )
    show_status
;;
* )
    usage
    exit 2
;;
esac

exit 0
[root@kvm-01-guest18 ~]# crb status
CRB repo is enabled and named: beaker-CRB
[root@kvm-01-guest18 ~]# crb disable
Disabling CRB repo
This system has no repositories available through subscriptions.
CRB repo is enabled and named: beaker-CRB
[root@kvm-01-guest18 ~]# crb status
CRB repo is enabled and named: beaker-CRB
```
