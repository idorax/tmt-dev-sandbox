#!/bin/bash

FILE=$(readlink -f $BASH_SOURCE)
NAME=$(basename $FILE)
CDIR=$(dirname $FILE)
TMPDIR=${TMPDIR:-"/tmp"}

g_host=${RHOST_RHEL_7?"Oops, env RHOST_RHEL_7 not set"}

function cleanup
{
	rm -rf $TMPDIR/$NAME.*.$$
}

function start
{
	echo "################################################################################"
	echo "# SCP file(s) from RHEL 7                                                      #"
	echo "################################################################################"
}

SSH="ssh root@$g_host"
SCP="scp root@$g_host"

function scp_epel_repo_files
{
	typeset pkg=$1
	$SSH rpm -ql $pkg > $TMPDIR/$NAME.out.$$
	repo_files=""
	while read line; do
		[[ $line != *".repo" ]] && continue
		repo_files+=" $line"
	done < $TMPDIR/$NAME.out.$$

	for repo_file in $repo_files; do
		dst=$(basename $repo_file)
		set -x
		$SCP:$repo_file $dst
		set +x
	done
}

trap "cleanup" EXIT
start
scp_epel_repo_files "epel-release"
