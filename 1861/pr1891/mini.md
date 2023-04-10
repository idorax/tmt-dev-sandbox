```bash
(tmt) huanli@kvm-01-guest09:data$ pwd
/home/huanli/dev/1861/dev/tests/plan/show/data

(tmt) huanli@kvm-01-guest09:data$ git remote -v
origin	git@github.com:teemtee/tmt.git (fetch)
origin	git@github.com:teemtee/tmt.git (push)

(tmt) huanli@kvm-01-guest09:data$ git branch
* main

(tmt) huanli@kvm-01-guest09:data$ cat /home/huanli/dev/1861/dev/.git/refs/remotes/origin/HEAD
ref: refs/remotes/origin/main

(tmt) huanli@kvm-01-guest09:data$ git rev-parse --abbrev-ref HEAD
main


(tmt) huanli@kvm-01-guest09:data$ git log
commit 47b9250f7f550b35ce1f5ac5b56a9e10ff9d903e (HEAD -> main, origin/main, origin/HEAD)
Author: Petr Šplíchal <psplicha@redhat.com>
Date:   Wed Apr 5 19:02:16 2023 +0200

    Fix dry mode handling when running a remote plan

commit 5164cde2bc1a44c56006a52477b446aab92f2bf4
Author: Jan Ščotka <jscotka@redhat.com>
Date:   Thu Oct 27 12:32:24 2022 +0200

    Enable the external `polarion` plugin tests

...<snip>...........................

(tmt) huanli@kvm-01-guest09:data$ tmt plans show -vvv /plans/mini
/plans/mini
                discover 
...<snip>...........................
                 sources /home/huanli/dev/1861/dev/tests/plan/show/data/plans/mini.fmf
                  fmf-id url: https://github.com/teemtee/tmt.git
                         path: /tests/plan/show/data
                         name: /plans/mini
                     web https://github.com/teemtee/tmt/tree/main/tests/plan/show/data/plans/mini.fmf

# ^^^^^^^^^^^ NOTE that   ref:  does not exsit !!! 

(tmt) huanli@kvm-01-guest09:data$ cd ../
(tmt) huanli@kvm-01-guest09:show$ ./test.sh 

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   Setup
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: [ 14:01:25 ] :: [  BEGIN   ] :: Running 'pushd data'
~/dev/1861/dev/tests/plan/show/data ~/dev/1861/dev/tests/plan/show
:: [ 14:01:25 ] :: [   PASS   ] :: Command 'pushd data' (Expected 0, got 0)
:: [ 14:01:25 ] :: [  BEGIN   ] :: Running 'set -o pipefail'
:: [ 14:01:25 ] :: [   PASS   ] :: Command 'set -o pipefail' (Expected 0, got 0)
:: [ 14:01:25 ] :: [  BEGIN   ] :: Running 'output=$(mktemp)'
:: [ 14:01:25 ] :: [   PASS   ] :: Command 'output=$(mktemp)' (Expected 0, got 0)
:: [ 14:01:25 ] :: [  BEGIN   ] :: Running 'show_tmp=$(mktemp)'
:: [ 14:01:25 ] :: [   PASS   ] :: Command 'show_tmp=$(mktemp)' (Expected 0, got 0)
:: [ 14:01:25 ] :: [  BEGIN   ] :: Running 'show_dir1=$(mktemp -d)'
:: [ 14:01:25 ] :: [   PASS   ] :: Command 'show_dir1=$(mktemp -d)' (Expected 0, got 0)
:: [ 14:01:25 ] :: [  BEGIN   ] :: Running 'show_dir2=$(mktemp -d)'
:: [ 14:01:25 ] :: [   PASS   ] :: Command 'show_dir2=$(mktemp -d)' (Expected 0, got 0)
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   Duration: 0s
::   Assertions: 6 good, 0 bad
::   RESULT: PASS (Setup)


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   Show a plan with -vvv in a normal git repo
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: [ 14:01:25 ] :: [  BEGIN   ] :: Running 'tmt plans show -vvv mini'
/plans/mini
                discover 
               provision 
                     how virtual
                    disk 40
                  memory 2048
                    arch x86_64
              ssh-option 
                     key 
                   image fedora
              connection session
                    user root
                 prepare 
                     how shell
                  script 
                   where 
                 execute 
                     how tmt
                duration 1h
                  script /bin/true
              exit-first false
                   where 
             interactive false
                  report 
                     how display
           display-guest auto
                  finish 
                     how shell
                  script 
                   where 
                 enabled true
                 sources /home/huanli/dev/1861/dev/tests/plan/show/data/plans/mini.fmf
                  fmf-id url: https://github.com/teemtee/tmt.git
                         path: /tests/plan/show/data
                         name: /plans/mini
                     web https://github.com/teemtee/tmt/tree/main/tests/plan/show/data/plans/mini.fmf

:: [ 14:01:26 ] :: [   PASS   ] :: Command 'tmt plans show -vvv mini' (Expected 0, got 0)
:: [ 14:01:26 ] :: [  BEGIN   ] :: Running 'cat /tmp/tmp.Z0kFx8edhP'
                  fmf-id url: https://github.com/teemtee/tmt.git
                         path: /tests/plan/show/data
                         name: /plans/mini
                     web https://github.com/teemtee/tmt/tree/main/tests/plan/show/data/plans/mini.fmf

:: [ 14:01:26 ] :: [   PASS   ] :: Command 'cat /tmp/tmp.Z0kFx8edhP' (Expected 0, got 0)
:: [ 14:01:26 ] :: [   PASS   ] :: File '/tmp/tmp.Z0kFx8edhP' should contain 'url:' 
:: [ 14:01:26 ] :: [   FAIL   ] :: File '/tmp/tmp.Z0kFx8edhP' should contain 'ref:' 
:: [ 14:01:26 ] :: [   PASS   ] :: File '/tmp/tmp.Z0kFx8edhP' should contain 'path:' 
:: [ 14:01:26 ] :: [   PASS   ] :: File '/tmp/tmp.Z0kFx8edhP' should contain 'name:' 
:: [ 14:01:26 ] :: [   PASS   ] :: File '/tmp/tmp.Z0kFx8edhP' should contain 'web' 
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   Duration: 2s
::   Assertions: 6 good, 1 bad
::   RESULT: FAIL (Show a plan with -vvv in a normal git repo)
```
