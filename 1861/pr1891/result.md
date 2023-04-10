```bash
(tmt) huanli@kvm-01-guest09:show$ pwd
/home/huanli/dev/1861/dev/tests/plan/show
(tmt) huanli@kvm-01-guest09:show$
(tmt) huanli@kvm-01-guest09:show$ cat test-worktree.sh
#!/bin/bash
. /usr/share/beakerlib/beakerlib.sh || exit 1

function dump_fmf_id_block
{
    typeset output=${1?"*** output file"}
    typeset lineno=$(cat -n $output | egrep 'fmf-id' | awk '{print $1}')
    sed -n "$lineno,$"p $output
}

rlJournalStart
    rlPhaseStartSetup
        rlRun "pushd data"
        rlRun "set -o pipefail"
        rlRun "output=\$(mktemp)"
        rlRun "show_tmp=\$(mktemp)"
        rlRun "show_dir1=\$(mktemp -d)"
        rlRun "show_dir2=\$(mktemp -d)"
        rlRun "show_dir3=\$(mktemp -d)"
    rlPhaseEnd

    rlPhaseStartTest "Show a plan with -vvv in work tree"
        local_repo="$show_dir3/tmt"
        plan="/plans/sanity/lint"
        worktree="TREE"
        ref="myref"

        rlRun "git clone https://github.com/teemtee/tmt $local_repo"
        rlRun "pushd $local_repo"
        rlRun "git branch $ref"
        rlRun "git worktree add $worktree $ref"
        rlRun -s "tmt plan show $plan -vvv"
        dump_fmf_id_block $rlRun_LOG > $show_tmp
        rlRun "cat $show_tmp"
        rlAssertNotGrep "ref:" $show_tmp
        rlRun "popd"

        rlRun "pushd $local_repo/$worktree"
        rlRun -s "tmt plan show $plan -vvv"
        dump_fmf_id_block $rlRun_LOG > $show_tmp
        rlRun "cat $show_tmp"
        rlAssertGrep "ref:.*$ref" $show_tmp
        rlRun "popd"
    rlPhaseEnd

    rlPhaseStartCleanup
        rlRun "popd"
        rlRun "rm $output"
        rlRun "rm -rf $show_tmp $show_dir1 $show_dir2 $show_dir3"
    rlPhaseEnd
rlJournalEnd
(tmt) huanli@kvm-01-guest09:show$ ./test-worktree.sh

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   Setup
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: [ 13:13:40 ] :: [  BEGIN   ] :: Running 'pushd data'
~/dev/1861/dev/tests/plan/show/data ~/dev/1861/dev/tests/plan/show
:: [ 13:13:40 ] :: [   PASS   ] :: Command 'pushd data' (Expected 0, got 0)
:: [ 13:13:40 ] :: [  BEGIN   ] :: Running 'set -o pipefail'
:: [ 13:13:40 ] :: [   PASS   ] :: Command 'set -o pipefail' (Expected 0, got 0)
:: [ 13:13:40 ] :: [  BEGIN   ] :: Running 'output=$(mktemp)'
:: [ 13:13:40 ] :: [   PASS   ] :: Command 'output=$(mktemp)' (Expected 0, got 0)
:: [ 13:13:40 ] :: [  BEGIN   ] :: Running 'show_tmp=$(mktemp)'
:: [ 13:13:40 ] :: [   PASS   ] :: Command 'show_tmp=$(mktemp)' (Expected 0, got 0)
:: [ 13:13:40 ] :: [  BEGIN   ] :: Running 'show_dir1=$(mktemp -d)'
:: [ 13:13:40 ] :: [   PASS   ] :: Command 'show_dir1=$(mktemp -d)' (Expected 0, got 0)
:: [ 13:13:40 ] :: [  BEGIN   ] :: Running 'show_dir2=$(mktemp -d)'
:: [ 13:13:40 ] :: [   PASS   ] :: Command 'show_dir2=$(mktemp -d)' (Expected 0, got 0)
:: [ 13:13:40 ] :: [  BEGIN   ] :: Running 'show_dir3=$(mktemp -d)'
:: [ 13:13:40 ] :: [   PASS   ] :: Command 'show_dir3=$(mktemp -d)' (Expected 0, got 0)
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   Duration: 0s
::   Assertions: 7 good, 0 bad
::   RESULT: PASS (Setup)


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   Show a plan with -vvv in work tree
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: [ 13:13:40 ] :: [  BEGIN   ] :: Running 'git clone https://github.com/teemtee/tmt /tmp/tmp.obOZrUqFBd/tmt'
Cloning into '/tmp/tmp.obOZrUqFBd/tmt'...
remote: Enumerating objects: 15728, done.
remote: Counting objects: 100% (837/837), done.
remote: Compressing objects: 100% (418/418), done.
remote: Total 15728 (delta 520), reused 641 (delta 408), pack-reused 14891
Receiving objects: 100% (15728/15728), 4.44 MiB | 11.40 MiB/s, done.
Resolving deltas: 100% (10441/10441), done.
:: [ 13:13:42 ] :: [   PASS   ] :: Command 'git clone https://github.com/teemtee/tmt /tmp/tmp.obOZrUqFBd/tmt' (Expected 0, got 0)
:: [ 13:13:42 ] :: [  BEGIN   ] :: Running 'pushd /tmp/tmp.obOZrUqFBd/tmt'
/tmp/tmp.obOZrUqFBd/tmt ~/dev/1861/dev/tests/plan/show/data ~/dev/1861/dev/tests/plan/show
:: [ 13:13:42 ] :: [   PASS   ] :: Command 'pushd /tmp/tmp.obOZrUqFBd/tmt' (Expected 0, got 0)
:: [ 13:13:42 ] :: [  BEGIN   ] :: Running 'git branch myref'
:: [ 13:13:42 ] :: [   PASS   ] :: Command 'git branch myref' (Expected 0, got 0)
:: [ 13:13:42 ] :: [  BEGIN   ] :: Running 'git worktree add TREE myref'
Preparing worktree (checking out 'myref')
HEAD is now at 47b9250 Fix dry mode handling when running a remote plan
:: [ 13:13:42 ] :: [   PASS   ] :: Command 'git worktree add TREE myref' (Expected 0, got 0)
:: [ 13:13:42 ] :: [  BEGIN   ] :: Running 'tmt plan show /plans/sanity/lint -vvv'
/plans/sanity/lint
                 summary Metadata used by tmt itself are valid
                discover
                   tests /lint/tests and /lint/plans
               provision
                     how local
                 prepare
                     how shell
                   where
                  script
                 execute
                     how tmt
                   where
                duration 1h
              exit-first false
             interactive false
                  script
                  report
                     how display
           display-guest auto
                  finish
                     how shell
                   where
                  script
                 enabled true
                 sources /tmp/tmp.obOZrUqFBd/tmt/plans/main.fmf
                         /tmp/tmp.obOZrUqFBd/tmt/plans/sanity/lint.fmf
                  fmf-id url: https://github.com/teemtee/tmt
                         name: /plans/sanity/lint
                     web https://github.com/teemtee/tmt/tree/main/plans/sanity/lint.fmf

:: [ 13:13:43 ] :: [   PASS   ] :: Command 'tmt plan show /plans/sanity/lint -vvv' (Expected 0, got 0)
:: [ 13:13:44 ] :: [  BEGIN   ] :: Running 'cat /tmp/tmp.fLD03a70qe'
                  fmf-id url: https://github.com/teemtee/tmt
                         name: /plans/sanity/lint
                     web https://github.com/teemtee/tmt/tree/main/plans/sanity/lint.fmf

:: [ 13:13:44 ] :: [   PASS   ] :: Command 'cat /tmp/tmp.fLD03a70qe' (Expected 0, got 0)
:: [ 13:13:44 ] :: [   PASS   ] :: File '/tmp/tmp.fLD03a70qe' should not contain 'ref:'
:: [ 13:13:44 ] :: [  BEGIN   ] :: Running 'popd'
~/dev/1861/dev/tests/plan/show/data ~/dev/1861/dev/tests/plan/show
:: [ 13:13:44 ] :: [   PASS   ] :: Command 'popd' (Expected 0, got 0)
:: [ 13:13:44 ] :: [  BEGIN   ] :: Running 'pushd /tmp/tmp.obOZrUqFBd/tmt/TREE'
/tmp/tmp.obOZrUqFBd/tmt/TREE ~/dev/1861/dev/tests/plan/show/data ~/dev/1861/dev/tests/plan/show
:: [ 13:13:44 ] :: [   PASS   ] :: Command 'pushd /tmp/tmp.obOZrUqFBd/tmt/TREE' (Expected 0, got 0)
:: [ 13:13:44 ] :: [  BEGIN   ] :: Running 'tmt plan show /plans/sanity/lint -vvv'
/plans/sanity/lint
                 summary Metadata used by tmt itself are valid
                discover
                   tests /lint/tests and /lint/plans
               provision
                     how local
                 prepare
                     how shell
                   where
                  script
                 execute
                     how tmt
              exit-first false
                   where
                duration 1h
             interactive false
                  script
                  report
                     how display
           display-guest auto
                  finish
                     how shell
                   where
                  script
                 enabled true
                 sources /tmp/tmp.obOZrUqFBd/tmt/TREE/plans/main.fmf
                         /tmp/tmp.obOZrUqFBd/tmt/TREE/plans/sanity/lint.fmf
                  fmf-id url: https://github.com/teemtee/tmt
                         ref: myref
                         name: /plans/sanity/lint
                     web https://github.com/teemtee/tmt/tree/myref/plans/sanity/lint.fmf

:: [ 13:13:45 ] :: [   PASS   ] :: Command 'tmt plan show /plans/sanity/lint -vvv' (Expected 0, got 0)
:: [ 13:13:45 ] :: [  BEGIN   ] :: Running 'cat /tmp/tmp.fLD03a70qe'
                  fmf-id url: https://github.com/teemtee/tmt
                         ref: myref
                         name: /plans/sanity/lint
                     web https://github.com/teemtee/tmt/tree/myref/plans/sanity/lint.fmf

:: [ 13:13:45 ] :: [   PASS   ] :: Command 'cat /tmp/tmp.fLD03a70qe' (Expected 0, got 0)
:: [ 13:13:45 ] :: [   PASS   ] :: File '/tmp/tmp.fLD03a70qe' should contain 'ref:.*myref'
:: [ 13:13:45 ] :: [  BEGIN   ] :: Running 'popd'
~/dev/1861/dev/tests/plan/show/data ~/dev/1861/dev/tests/plan/show
:: [ 13:13:45 ] :: [   PASS   ] :: Command 'popd' (Expected 0, got 0)
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   Duration: 5s
::   Assertions: 13 good, 0 bad
::   RESULT: PASS (Show a plan with -vvv in work tree)


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   Cleanup
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: [ 13:13:45 ] :: [  BEGIN   ] :: Running 'popd'
~/dev/1861/dev/tests/plan/show
:: [ 13:13:45 ] :: [   PASS   ] :: Command 'popd' (Expected 0, got 0)
:: [ 13:13:45 ] :: [  BEGIN   ] :: Running 'rm /tmp/tmp.kSH2A0AvNd'
:: [ 13:13:45 ] :: [   PASS   ] :: Command 'rm /tmp/tmp.kSH2A0AvNd' (Expected 0, got 0)
:: [ 13:13:45 ] :: [  BEGIN   ] :: Running 'rm -rf /tmp/tmp.fLD03a70qe /tmp/tmp.VRDKOQceBv /tmp/tmp.j3l34celnm /tmp/tmp.obOZrUqFBd'
:: [ 13:13:45 ] :: [   PASS   ] :: Command 'rm -rf /tmp/tmp.fLD03a70qe /tmp/tmp.VRDKOQceBv /tmp/tmp.j3l34celnm /tmp/tmp.obOZrUqFBd' (Expected 0, got 0)
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   Duration: 0s
::   Assertions: 3 good, 0 bad
::   RESULT: PASS (Cleanup)


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   unknown
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: [ 13:13:45 ] :: [   LOG    ] :: Phases fingerprint:  GpTeNtEf
:: [ 13:13:45 ] :: [   LOG    ] :: Asserts fingerprint: 03qGKNWX
:: [ 13:13:46 ] :: [   LOG    ] :: JOURNAL XML: /var/tmp/beakerlib-Z5fEUnS/journal.xml
:: [ 13:13:46 ] :: [   LOG    ] :: JOURNAL TXT: /var/tmp/beakerlib-Z5fEUnS/journal.txt
:: [ 13:13:46 ] :: [   INFO   ] :: Deleting rlRun_LOG file(s)
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   Duration: 5s
::   Phases: 3 good, 0 bad
::   OVERALL RESULT: PASS (unknown)

(tmt) huanli@kvm-01-guest09:show$
```
