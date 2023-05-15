#!/bin/bash
#
# Run cmds on RHEL 7
#

g_host=${RHOST_RHEL_7?"Oops, env RHOST_RHEL_7 not set"}

function start
{
	echo "################################################################################"
	echo "# Run command(s) on RHEL 7                                                     #"
	echo "################################################################################"
}

export PS4='[${FUNCNAME}@${BASH_SOURCE}:${LINENO}|${SECONDS}]+ '
function run_cmd
{
	typeset user=$(ssh root@$g_host id -un)
	typeset prefix="$user@$g_host:/tmp >>># "
	echo "$prefix $@"
	ssh $user@$g_host "$@"
	rc=$?
	echo "$prefix \$?=$rc"
	echo "$prefix"
}

FEDORA_EPEL_PACKAGE='epel-release'
FEDORA_EPEL_NEXT_PACKAGE='epel-next-release'
RHEL_7_EPEL_PACKAGE='https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm'
RHEL_8_EPEL_PACKAGE='https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm'
RHEL_9_EPEL_PACKAGE='https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm'
RHEL_7_EPEL_NEXT_PACKAGE='' # NOT FOUND
RHEL_8_EPEL_NEXT_PACKAGE='https://dl.fedoraproject.org/pub/epel/epel-next-release-latest-8.noarch.rpm'
RHEL_9_EPEL_NEXT_PACKAGE='https://dl.fedoraproject.org/pub/epel/epel-next-release-latest-9.noarch.rpm'

function run_default_cmds
{
	run_cmd "date"
	run_cmd "hostname"
	run_cmd "uname -a"

	run_cmd "yum provides epel-release"
	run_cmd "yum provides epel-next-release"

	run_cmd "yum -y remove epel-release"
	run_cmd "yum -y install $RHEL_7_EPEL_PACKAGE"
	run_cmd "rpm -q epel-release"
	run_cmd "rpm -ql epel-release"
	run_cmd "ls -l /etc/yum.repos.d/*epel*.repo"
	#
	# $ r7 rpm -ql epel-release
	# /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
	# /etc/yum.repos.d/epel-testing.repo
	# /etc/yum.repos.d/epel.repo
	# /usr/lib/systemd/system-preset/90-epel.preset
	# /usr/share/doc/epel-release-7
	# /usr/share/doc/epel-release-7/GPL
	#
	repo_files=""
	repo_files+=" /etc/yum.repos.d/epel.repo"
	repo_files+=" /etc/yum.repos.d/epel-testing.repo"
	for repo_file in $repo_files; do
		run_cmd "cat $repo_file"
	done
}

start
(( $# >= 1 )) && run_cmd "$@" || run_default_cmds
