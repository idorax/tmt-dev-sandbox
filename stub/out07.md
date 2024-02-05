```bash
huanli@kvm-01-guest03:dev$ git show
commit d4411297c379689b33710cb0acc4a4cf20dddee9 (HEAD -> dev-huanli-2664-20240202-ansible-lint, origin/dev-huanli-2664-20240202-ansible-lint)
Author: Vector Li <huanli@redhat.com>
Date:   Mon Feb 5 23:03:04 2024 +0800

    Update the block of `ansible-lint`

    This is proposed by Martin. For details, please refer to:
    https://github.com/teemtee/tmt/pull/2666#discussion_r1478363143

    Signed-off-by: Vector Li <huanli@redhat.com>

diff --git a/.pre-commit-config.yaml b/.pre-commit-config.yaml
index 19245040..923c8c5b 100644
--- a/.pre-commit-config.yaml
+++ b/.pre-commit-config.yaml
@@ -97,13 +97,21 @@ repos:
         files: ^tmt/schemas/.*\.yaml

   - repo: https://github.com/ansible-community/ansible-lint.git
-    rev: v5.3.2
+    rev: v6.22.2
     hooks:
       - id: ansible-lint
-        files: \.(yaml|yml)$
-        # New Ansible breaks older ansible-lint, stick to the old version for now
-        additional_dependencies:
-          - 'ansible-core<2.15'
+        args:
+          - ansible/
+          - examples/ansible/
+          - examples/redis/ansible/
+          - tests/finish/ansible/data/
+          - tests/run/worktree/data/ansible/
+          - tmt/steps/prepare/feature/
+          - --profile=production
+          - --warn-list=fqcn[action-core]
+          - --exclude=examples/redis/ansible/tasks/redis.yml
+          # redis.yml example requires posix module to be installed
+          # in order to be parsed by ansible-lint

   - repo: https://github.com/charliermarsh/ruff-pre-commit
     rev: v0.1.11
huanli@kvm-01-guest03:dev$



huanli@kvm-01-guest03:dev$   git commit -a --amend 
autopep8.............................................(no files to check)Skipped
fix end of files.....................................(no files to check)Skipped
mixed line ending....................................(no files to check)Skipped
trim trailing whitespace.............................(no files to check)Skipped
check toml...........................................(no files to check)Skipped
mypy.................................................(no files to check)Skipped
pyright..............................................(no files to check)Skipped
Check JSON schemas validity..........................(no files to check)Skipped
yamllint.............................................(no files to check)Skipped
Ansible-lint.............................................................Failed
- hook id: ansible-lint
- exit code: 2

INFO     Identified /home/huanli/dev/2664/dev as project root due .git directory.
INFO     Set ANSIBLE_LIBRARY=/home/huanli/.cache/ansible-compat/ef260e/modules:/home/huanli/.ansible/plugins/modules:/usr/share/ansible/plugins/modules
INFO     Set ANSIBLE_COLLECTIONS_PATH=/home/huanli/.cache/ansible-compat/ef260e/collections:/home/huanli/.ansible/collections:/usr/share/ansible/collections
INFO     Set ANSIBLE_ROLES_PATH=/home/huanli/.cache/ansible-compat/ef260e/roles:/home/huanli/.ansible/roles:/usr/share/ansible/roles:/etc/ansible/roles
INFO     Excluded: examples/redis/ansible/tasks/redis.yml
INFO     Set ANSIBLE_LIBRARY=/home/huanli/.cache/ansible-compat/ef260e/modules:/home/huanli/.ansible/plugins/modules:/usr/share/ansible/plugins/modules
INFO     Set ANSIBLE_COLLECTIONS_PATH=/home/huanli/.cache/ansible-compat/ef260e/collections:/home/huanli/.ansible/collections:/usr/share/ansible/collections
INFO     Set ANSIBLE_ROLES_PATH=/home/huanli/.cache/ansible-compat/ef260e/roles:/home/huanli/.ansible/roles:/usr/share/ansible/roles:/etc/ansible/roles
INFO     Executing syntax check on playbook tmt/steps/prepare/feature/epel-enable.yaml (0.66s)
INFO     Executing syntax check on playbook tmt/steps/prepare/feature/epel-disable.yaml (0.67s)
INFO     Executing syntax check on playbook ansible/packages.yml (0.63s)
INFO     Executing syntax check on playbook examples/ansible/test.yml (0.68s)
INFO     Executing syntax check on role examples/redis/ansible (0.66s)
INFO     Executing syntax check on playbook examples/redis/ansible/setup_server.yml (0.74s)
INFO     Executing syntax check on playbook tests/run/worktree/data/ansible/playbook.yml (0.70s)
INFO     Executing syntax check on playbook tests/finish/ansible/data/playbook.yml (0.71s)
WARNING  Ignored exception from VariableNamingRule.<bound method VariableNamingRule.matchyaml of var-naming: All variables should be named using only lowercase and underscores.> while processing examples/redis/ansible/setup_server.yml (playbook): list indices must be integers or slices, not str
WARNING  Listing 24 violation(s) that are fatal
]8;id=432929;https://ansible.readthedocs.io/projects/lint/rules/name/\name[play]]8;;\: All plays should be named.
ansible/packages.yml:1

]8;id=880390;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (dnf). (warning)
ansible/packages.yml:3 Use `ansible.builtin.dnf` or `ansible.legacy.dnf` instead.

]8;id=34322;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected at least 3
ansible/packages.yml:3

]8;id=592921;https://ansible.readthedocs.io/projects/lint/rules/name/\name[play]]8;;\: All plays should be named.
examples/ansible/test.yml:1

]8;id=150338;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (copy). (warning)
examples/ansible/test.yml:3 Use `ansible.builtin.copy` or `ansible.legacy.copy` instead.

]8;id=585614;https://ansible.readthedocs.io/projects/lint/rules/risky-file-permissions/\risky-file-permissions]8;;\: File permissions unset or incorrect.
examples/ansible/test.yml:3 Task/Handler: Create a simple test file

]8;id=600717;https://ansible.readthedocs.io/projects/lint/rules/command-instead-of-shell/\command-instead-of-shell]8;;\: Use shell only when shell functionality is required.
examples/ansible/test.yml:7 Task/Handler: Check the file content

]8;id=403514;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (shell). (warning)
examples/ansible/test.yml:7 Use `ansible.builtin.shell` or `ansible.legacy.shell` instead.

]8;id=631263;https://ansible.readthedocs.io/projects/lint/rules/no-changed-when/\no-changed-when]8;;\: Commands should not change things if nothing needs doing.
examples/ansible/test.yml:7 Task/Handler: Check the file content

]8;id=261776;https://ansible.readthedocs.io/projects/lint/rules/schema/\schema[playbook]]8;;\: $[0].vars [{'version': '{{ ansible_distribution_version }}'}] is not of type 'object'
examples/redis/ansible/setup_server.yml:1  Returned errors will not include exact line numbers, but they will mention
the schema name being used as a tag, like ``schema[playbook]``,
``schema[tasks]``.

This rule is not skippable and stops further processing of the file.

If incorrect schema was picked, you might want to either:

* move the file to standard location, so its file is detected correctly.
* use ``kinds:`` option in linter config to help it pick correct file type.


]8;id=44084;https://ansible.readthedocs.io/projects/lint/rules/name/\name[play]]8;;\: All plays should be named.
examples/redis/ansible/setup_server.yml:2

]8;id=905318;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (import_tasks). (warning)
examples/redis/ansible/setup_server.yml:6 Use `ansible.builtin.import_tasks` or `ansible.legacy.import_tasks` instead.

]8;id=657870;https://ansible.readthedocs.io/projects/lint/rules/name/\name[missing]]8;;\: All tasks should be named.
examples/redis/ansible/setup_server.yml:6 Task/Handler: import_tasks tasks/redis.yml

]8;id=921287;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (import_tasks). (warning)
examples/redis/ansible/setup_server.yml:7 Use `ansible.builtin.import_tasks` or `ansible.legacy.import_tasks` instead.

]8;id=937548;https://ansible.readthedocs.io/projects/lint/rules/name/\name[missing]]8;;\: All tasks should be named.
examples/redis/ansible/setup_server.yml:7 Task/Handler: import_tasks tasks/redis_variables.yml

]8;id=204481;https://ansible.readthedocs.io/projects/lint/rules/name/\name[play]]8;;\: All plays should be named.
tests/finish/ansible/data/playbook.yml:1

]8;id=294244;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (copy). (warning)
tests/finish/ansible/data/playbook.yml:6 Use `ansible.builtin.copy` or `ansible.legacy.copy` instead.

]8;id=632104;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (command). (warning)
tests/finish/ansible/data/playbook.yml:12 Use `ansible.builtin.command` or `ansible.legacy.command` instead.

]8;id=365861;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (command). (warning)
tests/finish/ansible/data/playbook.yml:17 Use `ansible.builtin.command` or `ansible.legacy.command` instead.

]8;id=482249;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
tests/run/worktree/data/ansible/playbook.yml:1

]8;id=261511;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (copy). (warning)
tests/run/worktree/data/ansible/playbook.yml:4 Use `ansible.builtin.copy` or `ansible.legacy.copy` instead.

]8;id=783519;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
tests/run/worktree/data/ansible/playbook.yml:4 Task/Handler: copy test file

]8;id=834350;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (command). (warning)
tests/run/worktree/data/ansible/playbook.yml:9 Use `ansible.builtin.command` or `ansible.legacy.command` instead.

]8;id=948574;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
tests/run/worktree/data/ansible/playbook.yml:9 Task/Handler: check test file

Read ]8;id=681884;https://ansible.readthedocs.io/projects/lint/configuring/#ignoring-rules-for-entire-files\documentation]8;;\ for instructions on how to ignore specific rule violations.

                        Rule Violation Summary
 count tag                      profile    rule associated tags
     1 ]8;id=888447;https://ansible.readthedocs.io/projects/lint/rules/command-instead-of-shell\command-instead-of-shell]8;;\ basic      command-shell, idiom
     1 ]8;id=875137;https://ansible.readthedocs.io/projects/lint/rules/schema\schema[playbook]]8;;\         basic      core
     2 ]8;id=589831;https://ansible.readthedocs.io/projects/lint/rules/name\name[missing]]8;;\            basic      idiom
     4 ]8;id=677335;https://ansible.readthedocs.io/projects/lint/rules/name\name[play]]8;;\               basic      idiom
     1 ]8;id=417358;https://ansible.readthedocs.io/projects/lint/rules/yaml\yaml[indentation]]8;;\        basic      formatting, yaml
     3 ]8;id=364552;https://ansible.readthedocs.io/projects/lint/rules/name\name[casing]]8;;\             moderate   idiom
     1 ]8;id=1843;https://ansible.readthedocs.io/projects/lint/rules/risky-file-permissions\risky-file-permissions]8;;\   safety     unpredictability
     1 ]8;id=594143;https://ansible.readthedocs.io/projects/lint/rules/no-changed-when\no-changed-when]8;;\          shared     command-shell, idempotency
    10 ]8;id=41307;https://ansible.readthedocs.io/projects/lint/rules/fqcn\fqcn[action-core]]8;;\        production formatting (warning)

Failed: 14 failure(s), 10 warning(s) on 22 files. Profile 'production' was required, but 'min' profile passed.

ruff.................................................(no files to check)Skipped
tmt lint.............................................(no files to check)Skipped
```
