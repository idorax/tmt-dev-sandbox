```bash
# https://docs.fedoraproject.org/en-US/epel/#_quickstart

root@kvm-01-guest06.lab.eng.brq2.redhat.com# uname -a
Linux kvm-01-guest06.lab.eng.brq2.redhat.com 6.2.15-100.fc36.x86_64 #1 SMP PREEMPT_DYNAMIC Thu May 11 16:51:53 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux

root@kvm-01-guest06.lab.eng.brq2.redhat.com# ls -l /etc/*release
lrwxrwxrwx. 1 root root 25 Dec  2 01:26 /etc/fedora-release -> ../usr/lib/fedora-release
lrwxrwxrwx. 1 root root 21 Dec  2 01:26 /etc/os-release -> ../usr/lib/os-release
lrwxrwxrwx. 1 root root 14 Dec  2 01:26 /etc/redhat-release -> fedora-release
lrwxrwxrwx. 1 root root 14 Dec  2 01:26 /etc/system-release -> fedora-release

root@kvm-01-guest06.lab.eng.brq2.redhat.com# cat /etc/fedora-release
Fedora release 36 (Thirty Six)

root@kvm-01-guest06.lab.eng.brq2.redhat.com# cat /etc/os-release
NAME="Fedora Linux"
VERSION="36 (Thirty Six)"
ID=fedora
VERSION_ID=36
VERSION_CODENAME=""
PLATFORM_ID="platform:f36"
PRETTY_NAME="Fedora Linux 36 (Thirty Six)"
ANSI_COLOR="0;38;2;60;110;180"
LOGO=fedora-logo-icon
CPE_NAME="cpe:/o:fedoraproject:fedora:36"
HOME_URL="https://fedoraproject.org/"
DOCUMENTATION_URL="https://docs.fedoraproject.org/en-US/fedora/f36/system-administrators-guide/"
SUPPORT_URL="https://ask.fedoraproject.org/"
BUG_REPORT_URL="https://bugzilla.redhat.com/"
REDHAT_BUGZILLA_PRODUCT="Fedora"
REDHAT_BUGZILLA_PRODUCT_VERSION=36
REDHAT_SUPPORT_PRODUCT="Fedora"
REDHAT_SUPPORT_PRODUCT_VERSION=36
PRIVACY_POLICY_URL="https://fedoraproject.org/wiki/Legal:PrivacyPolicy"
SUPPORT_END=2023-05-16

root@kvm-01-guest06.lab.eng.brq2.redhat.com# cat /etc/redhat-release
Fedora release 36 (Thirty Six)

root@kvm-01-guest06.lab.eng.brq2.redhat.com# cat /etc/system-release
Fedora release 36 (Thirty Six)

# XXX: Looks we cannot install EPEL on fedora
```
