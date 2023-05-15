# Fedora 38
FN = kvm-01-guest18.lab.eng.brq2.redhat.com
# CentOS 7
C7 =
# CentOS Stream 8
C8 =
# CentOS Stream 9
C9 =
# RHEL 7
R7 = kvm-01-guest02.lab.eng.rdu2.redhat.com
# RHEL 8
R8 = kvm-01-guest06.lab.eng.rdu2.redhat.com
# RHEL 9
R9 = kvm-01-guest28.lab.eng.rdu2.redhat.com

all: ea
env:
	@echo export RHOST_CS7=${C7}
	@echo export RHOST_RHEL_7=${R7}
	@echo export RHOST_C8S=${C8}
	@echo export RHOST_RHEL_8=${R8}
	@echo export RHOST_C9S=${C9}
	@echo export RHOST_RHEL_9=${R9}
	@echo export RHOST_FEDORA=${FN}
alias:
	@echo alias rRunR7='"ssh root@${R7} "'
	@echo alias rRunR8='"ssh root@${R8} "'
	@echo alias rRunR9='"ssh root@${R9} "'
	@echo alias rRunC7='"ssh root@${C7} "'
	@echo alias rRunC8='"ssh root@${C8} "'
	@echo alias rRunC9='"ssh root@${C9} "'
	@echo alias r7=rRunR7
	@echo alias r8=rRunR8
	@echo alias r9=rRunR9
	@echo alias c7=rRunC7
	@echo alias c8=rRunC8
	@echo alias c9=rRunC9

ea: env alias

FEDORA_EPEL_PACKAGE='epel-release'
FEDORA_EPEL_NEXT_PACKAGE='epel-next-release'
RHEL_7_EPEL_PACKAGE='https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm'
RHEL_8_EPEL_PACKAGE='https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm'
RHEL_9_EPEL_PACKAGE='https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm'
RHEL_7_EPEL_NEXT_PACKAGE='' # NOT FOUND
RHEL_8_EPEL_NEXT_PACKAGE='https://dl.fedoraproject.org/pub/epel/epel-next-release-latest-8.noarch.rpm'
RHEL_9_EPEL_NEXT_PACKAGE='https://dl.fedoraproject.org/pub/epel/epel-next-release-latest-9.noarch.rpm'
vars:
	@echo FEDORA_EPEL_PACKAGE="$(FEDORA_EPEL_PACKAGE)"
	@echo FEDORA_EPEL_NEXT_PACKAGE="$(FEDORA_EPEL_NEXT_PACKAGE)"
	@echo RHEL_7_EPEL_PACKAGE="$(RHEL_7_EPEL_PACKAGE)"
	@echo RHEL_8_EPEL_PACKAGE="$(RHEL_8_EPEL_PACKAGE)"
	@echo RHEL_9_EPEL_PACKAGE="$(RHEL_9_EPEL_PACKAGE)"
	@echo RHEL_7_EPEL_NEXT_PACKAGE="$(RHEL_7_EPEL_NEXT_PACKAGE)"
	@echo RHEL_8_EPEL_NEXT_PACKAGE="$(RHEL_8_EPEL_NEXT_PACKAGE)"
	@echo RHEL_9_EPEL_NEXT_PACKAGE="$(RHEL_9_EPEL_NEXT_PACKAGE)"
