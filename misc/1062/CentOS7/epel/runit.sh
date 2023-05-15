#!/bin/bash
#
# Run cmds on CentOS 7
#
g_host=${RHOST_CS7?"*** Oops, env RHOST_CS7 not set"}

function start
{
	echo "################################################################################"
	echo "# Run command(s) on CentOS 7                                                   #"
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

function run_default_cmds
{
	run_cmd "date"
	run_cmd "hostname"
	run_cmd "uname -a"

	run_cmd "yum provides epel-release"
	run_cmd "yum provides epel-next-release"

	run_cmd "yum -y remove epel-release"
	run_cmd "yum -y install epel-release"
	run_cmd "rpm -q epel-release"
	run_cmd "rpm -ql epel-release"
	run_cmd "ls -l /etc/yum.repos.d/*epel*.repo"
	run_cmd "cat -n /etc/yum.repos.d/epel.repo"
	run_cmd "cat -n /etc/yum.repos.d/epel-testing.repo"

	run_cmd "yum provides yum-utils"
	run_cmd "yum -y remove yum-utils"
	run_cmd "yum -y install yum-utils"
	run_cmd "rpm -q yum-utils"
	run_cmd "rpm -ql yum-utils"
}

start
(( $# >= 1 )) && run_cmd "$@" || run_default_cmds
