#!/bin/bash

function run_cmd
{
	echo "$(id -un)@$(hostname)# $*"
	eval "$*"
	echo
}

run_cmd 'uname -a'
run_cmd 'ls -l /etc/*release'
for file in $(ls -1 /etc/*release); do
	run_cmd "cat $file"
done
