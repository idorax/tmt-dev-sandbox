```bash
(tmt) huanli@kvm-01-guest01:repository$ pwd
/home/huanli/dev/1279/dev/tests/prepare/repository
(tmt) huanli@kvm-01-guest01:repository$ ls
data  main.fmf  test.sh
(tmt) huanli@kvm-01-guest01:repository$ ./test.sh

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   Setup
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: [ 16:30:47 ] :: [  BEGIN   ] :: Running 'pushd data'
~/dev/1279/dev/tests/prepare/repository/data ~/dev/1279/dev/tests/prepare/repository
:: [ 16:30:47 ] :: [   PASS   ] :: Command 'pushd data' (Expected 0, got 0)
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   Duration: 0s
::   Assertions: 1 good, 0 bad
::   RESULT: PASS (Setup)


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   Add local repository
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: [ 16:30:48 ] :: [  BEGIN   ] :: Running 'tmt run -adddvvvr plan --name local'
Using tree '/home/huanli/dev/1279/dev/tests/prepare/repository/data'.
/var/tmp/tmt/run-001
tmt version: running from the source
Read file '/var/tmp/tmt/run-001/run.yaml'.
Run data not found.
Enabled steps: provision, execute, report, prepare, discover and finish
warn: /local:prepare - {'how': 'repository', 'name': 'Local', 'baseurl': 'url', 'order': 1, 'priority': 99} is not valid under any of the given schemas
Sync the worktree to '/var/tmp/tmt/run-001/local/tree'.
Run command: rsync -ar --exclude .git /home/huanli/dev/1279/dev/tests/prepare/repository/data/ /var/tmp/tmt/run-001/local/tree
Create the data directory '/var/tmp/tmt/run-001/local/data'.
Found 1 plan.
Write file '/var/tmp/tmt/run-001/run.yaml'.

/local
summary: Prepare local rpm repository
info
environment: {'TMT_PLAN_DATA': '/var/tmp/tmt/run-001/local/data'}
context: {}
wake
discover
    Read file '/var/tmp/tmt/run-001/local/discover/step.yaml'.
    Step data not found.
    Read file '/var/tmp/tmt/run-001/local/discover/tests.yaml'.
    Discovered tests not found.
    Using the 'DiscoverShell' plugin for the 'shell' method.
    status: todo
    Write file '/var/tmp/tmt/run-001/local/discover/step.yaml'.
    Write file '/var/tmp/tmt/run-001/local/discover/tests.yaml'.
provision
    Read file '/var/tmp/tmt/run-001/local/provision/step.yaml'.
    Step data not found.
    Read file '/var/tmp/tmt/run-001/local/provision/guests.yaml'.
    Provisioned guests not found.
    Using the 'ProvisionTestcloud' plugin for the 'virtual' method.
    status: todo
    Write file '/var/tmp/tmt/run-001/local/provision/step.yaml'.
    Write file '/var/tmp/tmt/run-001/local/provision/guests.yaml'.
prepare
    Read file '/var/tmp/tmt/run-001/local/prepare/step.yaml'.
    Step data not found.
    Using the 'PrepareRepository' plugin for the 'repository' method.
    status: todo
    Write file '/var/tmp/tmt/run-001/local/prepare/step.yaml'.
execute
    Read file '/var/tmp/tmt/run-001/local/execute/step.yaml'.
    Step data not found.
    Read file '/var/tmp/tmt/run-001/local/execute/results.yaml'.
    Test results not found.
    Using the 'ExecuteInternal' plugin for the 'tmt' method.
    status: todo
    Write file '/var/tmp/tmt/run-001/local/execute/step.yaml'.
    Write file '/var/tmp/tmt/run-001/local/execute/results.yaml'.
report
    Read file '/var/tmp/tmt/run-001/local/report/step.yaml'.
    Step data not found.
    Report step always force mode enabled.
    Clean up workdir '/var/tmp/tmt/run-001/local/report'.
    status: todo
    Using the 'ReportDisplay' plugin for the 'display' method.
    Write file '/var/tmp/tmt/run-001/local/report/step.yaml'.
finish
    Read file '/var/tmp/tmt/run-001/local/finish/step.yaml'.
    Step data not found.
    Using the 'FinishShell' plugin for the 'shell' method.
    status: todo
    Write file '/var/tmp/tmt/run-001/local/finish/step.yaml'.
action
go
    discover
    workdir: /var/tmp/tmt/run-001/local/discover
        how: shell
        order: 50
        summary: 1 test selected
            /script-00
    status: done
    Write file '/var/tmp/tmt/run-001/local/discover/step.yaml'.
    Write file '/var/tmp/tmt/run-001/local/discover/tests.yaml'.
    Write file '/var/tmp/tmt/run-001/local/discover/run.yaml'.
    provision
    workdir: /var/tmp/tmt/run-001/local/provision
        how: virtual
        order: 50
        user: root
        key: []
        image: fedora
        memory: 2048 MB
        disk: 10 GB
        connection: session
        arch: x86_64
        Guessed image url: 'https://download.fedoraproject.org/pub/fedora/linux/releases/36/Cloud/x86_64/images/Fedora-Cloud-Base-36-1.5.x86_64.qcow2'
        qcow: Fedora-Cloud-Base-36-1.5.x86_64.qcow2
        name: tmt-001-rESNNHRa
        Generating an ssh key.
        Run command: ssh-keygen -f /var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -N '' -t ecdsa
        out: Generating public/private ecdsa key pair.
        out: Your identification has been saved in /var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa
        out: Your public key has been saved in /var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa.pub
        out: The key fingerprint is:
        out: SHA256:TruMz0ZVoeRZYD58GZEKyZ/SX8FRIPEIzwupspiyL0Y huanli@kvm-01-guest01.lab.eng.brq2.redhat.com
        out: The key's randomart image is:
        out: +---[ECDSA 256]---+
        out: |       . .=.B*o+.|
        out: |        +* Oo*o  |
        out: |         +X+* .. |
        out: |        ..*+ ..  |
        out: |      . So ...   |
        out: |  E  o =..  .    |
        out: | .. o ..o        |
        out: |  oo   +..       |
        out: | ..o. .o=        |
        out: +----[SHA256]-----+
        progress: booting...
        ip: 127.0.0.1
        port: 10037
        Wait for a connection to the guest.
        wait: waiting for condition 'try_whoami' with timeout 0:10:00,deadline in 600.0, checking every 1 seconds
        Execute command 'whoami' on guest '127.0.0.1'.
        Create the master ssh connection: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 -MNnT root@127.0.0.1
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 599.9996930409689 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 523.7878929259605 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 447.9201053699944 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 404.9665367209818 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 403.9378060369636 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 402.9194939629524 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 401.8991718579782 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 400.8766544809914 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 399.85568032000447 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 398.83171299495734 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 397.80971999897156 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 396.78981197596295 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 395.76685028598877 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 394.7479867239599 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 393.72288241499336 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 392.7037924809847 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 391.6855571119813 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 390.66777581797214 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 389.61979980097385 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 388.5973614419927 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 387.5704686859972 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 386.53931613097666 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 385.5174739509821 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 384.4979847369832 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 383.4683397350018 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 382.4398305389914 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 381.4188216079492 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 380.39276633097325 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 379.36996659700526 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 378.34233691199915 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 377.31072662299266 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 376.29074052599026 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 375.27045353199355 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 374.24684270698344 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 373.2265328729991 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 372.20418992999475 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 371.17454078496667 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: Connection closed by remote host
        err: Connection closed by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 370.15285006695194 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 369.13565466098953 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 368.1178222390008 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 367.0968102879706 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 366.0771525109885 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 365.05425880500115 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 364.0312793299672 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 363.0107413599617 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 361.9908333969652 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 360.9718272999744 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 359.9537826249725 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 358.9358426699764 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 357.9178428389714 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: kex_exchange_identification: read: Connection reset by peer
        err: Connection reset by 127.0.0.1 port 10037
        Command returned '255'.
        wait: 'try_whoami' still pending, 356.89985432097455 seconds left
        Execute command 'whoami' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; whoami'
        err: Warning: Permanently added '[127.0.0.1]:10037' (ED25519) to the list of known hosts.
        out: root
        wait: 'try_whoami' finished successfully, 335.0323907449492 seconds left
        Waiting 10 seconds for non-kvm instance...
        Execute command 'cat /etc/os-release' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; cat /etc/os-release'
        out: NAME="Fedora Linux"
        out: VERSION="36 (Cloud Edition)"
        out: ID=fedora
        out: VERSION_ID=36
        out: VERSION_CODENAME=""
        out: PLATFORM_ID="platform:f36"
        out: PRETTY_NAME="Fedora Linux 36 (Cloud Edition)"
        out: ANSI_COLOR="0;38;2;60;110;180"
        out: LOGO=fedora-logo-icon
        out: CPE_NAME="cpe:/o:fedoraproject:fedora:36"
        out: HOME_URL="https://fedoraproject.org/"
        out: DOCUMENTATION_URL="https://docs.fedoraproject.org/en-US/fedora/f36/system-administrators-guide/"
        out: SUPPORT_URL="https://ask.fedoraproject.org/"
        out: BUG_REPORT_URL="https://bugzilla.redhat.com/"
        out: REDHAT_BUGZILLA_PRODUCT="Fedora"
        out: REDHAT_BUGZILLA_PRODUCT_VERSION=36
        out: REDHAT_SUPPORT_PRODUCT="Fedora"
        out: REDHAT_SUPPORT_PRODUCT_VERSION=36
        out: PRIVACY_POLICY_URL="https://fedoraproject.org/wiki/Legal:PrivacyPolicy"
        out: VARIANT="Cloud Edition"
        out: VARIANT_ID=cloud
        Execute command 'cat /etc/lsb-release' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; cat /etc/lsb-release'
        err: cat: /etc/lsb-release: No such file or directory
        Command returned '1'.
        Execute command 'cat /etc/redhat-release' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; cat /etc/redhat-release'
        out: Fedora release 36 (Thirty Six)
        Execute command 'uname -r' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; uname -r'
        out: 5.17.5-300.fc36.x86_64
        kernel: 5.17.5-300.fc36.x86_64
        summary: 1 guest provisioned
    status: done
    Write file '/var/tmp/tmt/run-001/local/provision/step.yaml'.
    Write file '/var/tmp/tmt/run-001/local/provision/guests.yaml'.
    prepare
    workdir: /var/tmp/tmt/run-001/local/prepare
        Push workdir to guest '127.0.0.1'.
        Run command: rsync -R -r -z --links --safe-links --delete -e 'ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32' /var/tmp/tmt/run-001/local root@127.0.0.1:/
        how: repository
        name: Local
        order: 1
        Add repository into '/etc/yum.repos.d'.
        Execute command 'touch /etc/yum.repos.d/demo.repo' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; touch /etc/yum.repos.d/demo.repo'
        Execute command 'echo "[demo]" >> /etc/yum.repos.d/demo.repo' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; echo "[demo]" >> /etc/yum.repos.d/demo.repo'
        Execute command 'echo "name=Local" >> /etc/yum.repos.d/demo.repo' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; echo "name=Local" >> /etc/yum.repos.d/demo.repo'
        Execute command 'echo "baseurl=url" >> /etc/yum.repos.d/demo.repo' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; echo "baseurl=url" >> /etc/yum.repos.d/demo.repo'
        Execute command 'echo "gpgcheck=0" >> /etc/yum.repos.d/demo.repo' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; echo "gpgcheck=0" >> /etc/yum.repos.d/demo.repo'
        Execute command 'echo "gpgkey=file:///gpgkey" >> /etc/yum.repos.d/demo.repo' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; echo "gpgkey=file:///gpgkey" >> /etc/yum.repos.d/demo.repo'
        Execute command 'echo "skip-if-unavailable=1" >> /etc/yum.repos.d/demo.repo' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; echo "skip-if-unavailable=1" >> /etc/yum.repos.d/demo.repo'
        Execute command 'echo "order=1" >> /etc/yum.repos.d/demo.repo' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; echo "order=1" >> /etc/yum.repos.d/demo.repo'
        Execute command 'echo "priority=99" >> /etc/yum.repos.d/demo.repo' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data; echo "priority=99" >> /etc/yum.repos.d/demo.repo'

        Copy '/var/tmp/tmt/run-001/local/data' from the guest to '/'.
        Run command: rsync -R -r -z --links --safe-links --protect-args -e 'ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32' root@127.0.0.1:/var/tmp/tmt/run-001/local/data /
        summary: 1 preparation applied
    status: done
    Write file '/var/tmp/tmt/run-001/local/prepare/step.yaml'.
    execute
    workdir: /var/tmp/tmt/run-001/local/execute
        how: tmt
        order: 50
        exit-first: False
        Write file '/var/tmp/tmt/run-001/local/execute/data/script-00/metadata.yaml'.
        Copy '/home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-abort' to '/usr/local/bin/tmt-abort' on the guest.
        Run command: rsync -p --chmod=755 -e 'ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32' /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-abort root@127.0.0.1:/usr/local/bin/tmt-abort
        Copy '/home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-abort' to '/usr/local/bin/rstrnt-abort' on the guest.
        Run command: rsync -p --chmod=755 -e 'ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32' /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-abort root@127.0.0.1:/usr/local/bin/rstrnt-abort
        Copy '/home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-abort' to '/usr/local/bin/rhts-abort' on the guest.
        Run command: rsync -p --chmod=755 -e 'ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32' /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-abort root@127.0.0.1:/usr/local/bin/rhts-abort
        Copy '/home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-file-submit' to '/usr/local/bin/tmt-file-submit' on the guest.
        Run command: rsync -p --chmod=755 -e 'ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32' /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-file-submit root@127.0.0.1:/usr/local/bin/tmt-file-submit
        Copy '/home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-file-submit' to '/usr/local/bin/rstrnt-report-log' on the guest.
        Run command: rsync -p --chmod=755 -e 'ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32' /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-file-submit root@127.0.0.1:/usr/local/bin/rstrnt-report-log
        Copy '/home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-file-submit' to '/usr/local/bin/rhts-submit-log' on the guest.
        Run command: rsync -p --chmod=755 -e 'ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32' /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-file-submit root@127.0.0.1:/usr/local/bin/rhts-submit-log
        Copy '/home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-file-submit' to '/usr/local/bin/rhts_submit_log' on the guest.
        Run command: rsync -p --chmod=755 -e 'ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32' /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-file-submit root@127.0.0.1:/usr/local/bin/rhts_submit_log
        Copy '/home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-reboot' to '/usr/local/bin/tmt-reboot' on the guest.
        Run command: rsync -p --chmod=755 -e 'ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32' /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-reboot root@127.0.0.1:/usr/local/bin/tmt-reboot
        Copy '/home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-reboot' to '/usr/local/bin/rstrnt-reboot' on the guest.
        Run command: rsync -p --chmod=755 -e 'ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32' /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-reboot root@127.0.0.1:/usr/local/bin/rstrnt-reboot
        Copy '/home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-reboot' to '/usr/local/bin/rhts-reboot' on the guest.
        Run command: rsync -p --chmod=755 -e 'ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32' /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-reboot root@127.0.0.1:/usr/local/bin/rhts-reboot
        Copy '/home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-report-result' to '/usr/local/bin/tmt-report-result' on the guest.
        Run command: rsync -p --chmod=755 -e 'ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32' /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-report-result root@127.0.0.1:/usr/local/bin/tmt-report-result
        Copy '/home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-report-result' to '/usr/local/bin/rstrnt-report-result' on the guest.
        Run command: rsync -p --chmod=755 -e 'ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32' /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-report-result root@127.0.0.1:/usr/local/bin/rstrnt-report-result
        Copy '/home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-report-result' to '/usr/local/bin/rhts-report-result' on the guest.
        Run command: rsync -p --chmod=755 -e 'ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32' /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/steps/execute/scripts/tmt-report-result root@127.0.0.1:/usr/local/bin/rhts-report-result
        Push workdir to guest '127.0.0.1'.
        Run command: rsync -R -r -z --links --safe-links --delete -e 'ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32' /var/tmp/tmt/run-001/local root@127.0.0.1:/
            test: /script-00
        Execute '/script-00' as a 'shell' test.
        Use workdir '/var/tmp/tmt/run-001/local/discover/default-0/tests'.
        Execute command 'set -eo pipefail; dnf repolist | grep 'Local'' on guest '127.0.0.1'.
        Run command: ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32 root@127.0.0.1 'export TMT_PLAN_DATA=/var/tmp/tmt/run-001/local/data TMT_TREE=/var/tmp/tmt/run-001/local/tree TMT_TEST_DATA=/var/tmp/tmt/run-001/local/execute/data/script-00/data TMT_REBOOT_REQUEST=/var/tmp/tmt/run-001/local/execute/data/script-00/data/reboot-request TMT_REBOOT_COUNT=0 REBOOTCOUNT=0 RSTRNT_REBOOTCOUNT=0; cd /var/tmp/tmt/run-001/local/discover/default-0/tests; set -eo pipefail; dnf repolist | grep '"'"'Local'"'"''
                out: demo                           Local
        Append to file '/var/tmp/tmt/run-001/local/execute/data/script-00/output.txt'.
        Copy '/var/tmp/tmt/run-001/local/execute/data/script-00' from the guest to '/'.
        Run command: rsync -R -r -z --links --safe-links --protect-args -e 'ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32' root@127.0.0.1:/var/tmp/tmt/run-001/local/execute/data/script-00 /
        Check result of '/script-00'.
                00:00:11 pass /script-00 [1/1]
        Pull the plan data directory.
        Copy '/var/tmp/tmt/run-001/local/data' from the guest to '/'.
        Run command: rsync -R -r -z --links --safe-links --protect-args -e 'ssh -oForwardX11=no -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -oIdentitiesOnly=yes -p10037 -i/var/tmp/tmt/run-001/local/provision/default-0/id_ecdsa -S/run/user/1001/tmt/tmpim8cih32' root@127.0.0.1:/var/tmp/tmt/run-001/local/data /
        summary: 1 test executed
    status: done
    Write file '/var/tmp/tmt/run-001/local/execute/step.yaml'.
    Write file '/var/tmp/tmt/run-001/local/execute/results.yaml'.
    report
    workdir: /var/tmp/tmt/run-001/local/report
        how: display
        order: 50
            pass /script-00
                output.txt: /var/tmp/tmt/run-001/local/execute/data/script-00/output.txt
        Read file '/var/tmp/tmt/run-001/local/execute/data/script-00/output.txt'.
                content: demo                           Local

        summary: 1 test passed
    status: done
    Write file '/var/tmp/tmt/run-001/local/report/step.yaml'.
    finish
    workdir: /var/tmp/tmt/run-001/local/finish
        Close the master ssh connection.
        Remove ssh socket '/run/user/1001/tmt/tmpim8cih32'.
        Stopping testcloud instance 'tmt-001-rESNNHRa'.
        guest: stopped
        Removing testcloud instance 'tmt-001-rESNNHRa'.
        guest: removed
        summary: 0 tasks completed
    status: done
    Write file '/var/tmp/tmt/run-001/local/finish/step.yaml'.

total: 1 test passed
Clean up workdir '/var/tmp/tmt/run-001'.
:: [ 16:37:05 ] :: [   PASS   ] :: Command 'tmt run -adddvvvr plan --name local' (Expected 0, got 0)
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   Duration: 377s
::   Assertions: 1 good, 0 bad
::   RESULT: PASS (Add local repository)


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   Cleanup
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: [ 16:37:05 ] :: [  BEGIN   ] :: Running 'popd'
~/dev/1279/dev/tests/prepare/repository
:: [ 16:37:05 ] :: [   PASS   ] :: Command 'popd' (Expected 0, got 0)
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   Duration: 0s
::   Assertions: 1 good, 0 bad
::   RESULT: PASS (Cleanup)


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   unknown
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: [ 16:37:05 ] :: [   LOG    ] :: Phases fingerprint:  GpTeNtEf
:: [ 16:37:05 ] :: [   LOG    ] :: Asserts fingerprint: GpTeNtEf
:: [ 16:37:05 ] :: [   LOG    ] :: JOURNAL XML: /var/tmp/beakerlib-aL8VziB/journal.xml
:: [ 16:37:05 ] :: [   LOG    ] :: JOURNAL TXT: /var/tmp/beakerlib-aL8VziB/journal.txt
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::   Duration: 378s
::   Phases: 3 good, 0 bad
::   OVERALL RESULT: PASS (unknown)

(tmt) huanli@kvm-01-guest01:repository$
```
