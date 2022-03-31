#!/bin/bash
#
# Unit test script for fixing issue https://github.com/teemtee/tmt/issues/1091
#

FILE=$(readlink -f $BASH_SOURCE)
NAME=$(basename $FILE)
CDIR=$(dirname $FILE)
TMPDIR=${TMPDIR:-"/tmp"}

function line80
{
	python3 -c "print('-' * 80)"
}

CMD_ID=0
function run_cmd
{
	(( CMD_ID += 1 ))
	echo "[$(printf "%02d" $CMD_ID)] $(id -un)@$(hostname)\$ $*"
	eval "$*"
	echo
	line80
}

function setup
{
	pushd $(pwd) > /dev/null 2>&1
	cd $CDIR/foo
}

function cleanup
{
	popd > /dev/null 2>&1
}

[[ $1 == '-md' ]] && echo '```bash' || echo
setup
run_cmd tmt test export
run_cmd tmt test export --format dict
run_cmd tmt test export --format yaml
run_cmd tmt test export --format dict --fmf-id
run_cmd tmt test export --format dict --fmf-id /tests/example1
run_cmd tmt test export --format dict --fmf-id /tests/example2
run_cmd tmt test export --format yaml --fmf-id
run_cmd tmt test export --format yaml --fmf-id /tests/example1
run_cmd tmt test export --format yaml --fmf-id /tests/example2
echo "DONE"
[[ $1 == '-md' ]] && echo '```' || echo
cleanup
