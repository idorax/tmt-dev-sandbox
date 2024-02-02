```bash
(tmt) huanli@kvm-01-guest06:dev$ git diff
diff --git a/.pre-commit-config.yaml b/.pre-commit-config.yaml
index 19245040..cf870a96 100644
--- a/.pre-commit-config.yaml
+++ b/.pre-commit-config.yaml
@@ -97,13 +97,10 @@ repos:
         files: ^tmt/schemas/.*\.yaml

   - repo: https://github.com/ansible-community/ansible-lint.git
-    rev: v5.3.2
+    rev: v6.22.2
     hooks:
       - id: ansible-lint
         files: \.(yaml|yml)$
-        # New Ansible breaks older ansible-lint, stick to the old version for now
-        additional_dependencies:
-          - 'ansible-core<2.15'

   - repo: https://github.com/charliermarsh/ruff-pre-commit
     rev: v0.1.11
(tmt) huanli@kvm-01-guest06:dev$
(tmt) huanli@kvm-01-guest06:dev$ git commit -s -a -m "Update rev of ansible-lint to v6.22.2"
autopep8.............................................(no files to check)Skipped
fix end of files.........................................................Passed
mixed line ending........................................................Passed
trim trailing whitespace.................................................Passed
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
INFO     Loading ignores from .gitignore
INFO     Excluded: .git
INFO     Set ANSIBLE_LIBRARY=/home/huanli/.cache/ansible-compat/ef260e/modules:/home/huanli/.ansible/plugins/modules:/usr/share/ansible/plugins/modules
INFO     Set ANSIBLE_COLLECTIONS_PATH=/home/huanli/.cache/ansible-compat/ef260e/collections:/home/huanli/.ansible/collections:/usr/share/ansible/collections
INFO     Set ANSIBLE_ROLES_PATH=/home/huanli/.cache/ansible-compat/ef260e/roles:/home/huanli/.ansible/roles:/usr/share/ansible/roles:/etc/ansible/roles
INFO     Executing syntax check on playbook tests/finish/ansible/data/playbook.yml (0.68s)
INFO     Executing syntax check on playbook examples/ansible/test.yml (0.65s)
INFO     Executing syntax check on playbook tmt/steps/prepare/feature/epel-enable.yaml (0.82s)
INFO     Executing syntax check on playbook tests/run/worktree/data/ansible/playbook.yml (0.77s)
INFO     Executing syntax check on playbook tmt/steps/prepare/feature/epel-disable.yaml (0.73s)
INFO     Executing syntax check on playbook tests/prepare/ansible/data/playbook.yml (0.70s)
INFO     Executing syntax check on playbook examples/redis/ansible/setup_server.yml (0.88s)
INFO     Executing syntax check on playbook ansible/packages.yml (0.68s)
WARNING  Ignored exception from VariableNamingRule.<bound method VariableNamingRule.matchyaml of var-naming: All variables should be named using only lowercase and underscores.> while processing examples/redis/ansible/setup_server.yml (playbook): list indices must be integers or slices, not str
WARNING  Listing 303 violation(s) that are fatal
]8;id=32769;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
.github/workflows/pre-commit.yml:12

]8;id=803070;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[brackets]]8;;\: Too many spaces inside brackets
.github/workflows/shellcheck.yml:4

]8;id=959526;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[brackets]]8;;\: Too many spaces inside brackets
.github/workflows/shellcheck.yml:6

]8;id=194505;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:25

]8;id=555009;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 8
.packit.yaml:27

]8;id=873646;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 8
.packit.yaml:47

]8;id=45716;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 12
.packit.yaml:48

]8;id=554873;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 14 but found 16
.packit.yaml:49

]8;id=867251;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:65

]8;id=50336;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 8
.packit.yaml:69

]8;id=556389;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 12
.packit.yaml:70

]8;id=746880;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 14 but found 16
.packit.yaml:71

]8;id=502014;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 14 but found 16
.packit.yaml:74

]8;id=316198;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 18 but found 20
.packit.yaml:75

]8;id=348708;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:83

]8;id=869706;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 8
.packit.yaml:87

]8;id=323397;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 14 but found 16
.packit.yaml:89

]8;id=172719;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 18 but found 20
.packit.yaml:90

]8;id=931249;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 22 but found 24
.packit.yaml:91

]8;id=686927;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:99

]8;id=260267;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 8
.packit.yaml:103

]8;id=657321;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 14 but found 16
.packit.yaml:105

]8;id=290913;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 18 but found 20
.packit.yaml:106

]8;id=638221;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 22 but found 24
.packit.yaml:107

]8;id=306320;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:116

]8;id=10413;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:117

]8;id=767355;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:118

]8;id=434990;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 8
.packit.yaml:123

]8;id=835652;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:138

]8;id=222220;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:139

]8;id=649069;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:140

]8;id=630289;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 8
.packit.yaml:144

]8;id=555829;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
.pre-commit-config.yaml:116

]8;id=637542;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[hyphens]]8;;\: Too many spaces after hyphen
.pre-commit-hooks.yaml:1

]8;id=149291;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (193 > 160 characters)
.pre-commit-hooks.yaml:3

]8;id=938025;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[hyphens]]8;;\: Too many spaces after hyphen
.pre-commit-hooks.yaml:10

]8;id=851604;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (199 > 160 characters)
.pre-commit-hooks.yaml:12

]8;id=975786;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[hyphens]]8;;\: Too many spaces after hyphen
.pre-commit-hooks.yaml:19

]8;id=789303;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (199 > 160 characters)
.pre-commit-hooks.yaml:21

]8;id=964176;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[hyphens]]8;;\: Too many spaces after hyphen
.pre-commit-hooks.yaml:28

]8;id=918109;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (201 > 160 characters)
.pre-commit-hooks.yaml:30

]8;id=692763;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
.readthedocs.yaml:10

]8;id=60837;https://ansible.readthedocs.io/projects/lint/rules/name/\name[play]]8;;\: All plays should be named.
ansible/packages.yml:1

]8;id=365512;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (dnf).
ansible/packages.yml:3 Use `ansible.builtin.dnf` or `ansible.legacy.dnf` instead.

]8;id=20940;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected at least 3
ansible/packages.yml:3

]8;id=403906;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
docs/toolbelt-catalog.yaml:21

]8;id=582591;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
docs/toolbelt-catalog.yaml:50

]8;id=691612;https://ansible.readthedocs.io/projects/lint/rules/name/\name[play]]8;;\: All plays should be named.
examples/ansible/test.yml:1

]8;id=395076;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (copy).
examples/ansible/test.yml:3 Use `ansible.builtin.copy` or `ansible.legacy.copy` instead.

]8;id=117602;https://ansible.readthedocs.io/projects/lint/rules/risky-file-permissions/\risky-file-permissions]8;;\: File permissions unset or incorrect.
examples/ansible/test.yml:3 Task/Handler: Create a simple test file

]8;id=143294;https://ansible.readthedocs.io/projects/lint/rules/command-instead-of-shell/\command-instead-of-shell]8;;\: Use shell only when shell functionality is required.
examples/ansible/test.yml:7 Task/Handler: Check the file content

]8;id=194080;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (shell).
examples/ansible/test.yml:7 Use `ansible.builtin.shell` or `ansible.legacy.shell` instead.

]8;id=378883;https://ansible.readthedocs.io/projects/lint/rules/no-changed-when/\no-changed-when]8;;\: Commands should not change things if nothing needs doing.
examples/ansible/test.yml:7 Task/Handler: Check the file content

]8;id=563616;https://ansible.readthedocs.io/projects/lint/rules/schema/\schema[playbook]]8;;\: $[0].vars [{'version': '{{ ansible_distribution_version }}'}] is not of type 'object'
examples/redis/ansible/setup_server.yml:1  Returned errors will not include exact line numbers, but they will mention
the schema name being used as a tag, like ``schema[playbook]``,
``schema[tasks]``.

This rule is not skippable and stops further processing of the file.

If incorrect schema was picked, you might want to either:

* move the file to standard location, so its file is detected correctly.
* use ``kinds:`` option in linter config to help it pick correct file type.


]8;id=738502;https://ansible.readthedocs.io/projects/lint/rules/name/\name[play]]8;;\: All plays should be named.
examples/redis/ansible/setup_server.yml:2

]8;id=128354;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (import_tasks).
examples/redis/ansible/setup_server.yml:6 Use `ansible.builtin.import_tasks` or `ansible.legacy.import_tasks` instead.

]8;id=380937;https://ansible.readthedocs.io/projects/lint/rules/name/\name[missing]]8;;\: All tasks should be named.
examples/redis/ansible/setup_server.yml:6 Task/Handler: import_tasks tasks/redis.yml

]8;id=183274;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (import_tasks).
examples/redis/ansible/setup_server.yml:7 Use `ansible.builtin.import_tasks` or `ansible.legacy.import_tasks` instead.

]8;id=515029;https://ansible.readthedocs.io/projects/lint/rules/name/\name[missing]]8;;\: All tasks should be named.
examples/redis/ansible/setup_server.yml:7 Task/Handler: import_tasks tasks/redis_variables.yml

]8;id=139231;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (package).
examples/redis/ansible/tasks/redis.yml:1 Use `ansible.builtin.package` or `ansible.legacy.package` instead.

]8;id=132428;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
examples/redis/ansible/tasks/redis.yml:1 Task/Handler: setup syncing redis server

]8;id=182688;https://ansible.readthedocs.io/projects/lint/rules/no-free-form/\no-free-form]8;;\: Avoid using free-form when calling module actions. (package)
examples/redis/ansible/tasks/redis.yml:1 Task/Handler: setup syncing redis server

]8;id=478154;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected at least 3
examples/redis/ansible/tasks/redis.yml:4

]8;id=518905;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
examples/redis/ansible/tasks/redis.yml:8 Task/Handler: bind to all interfaces

]8;id=523958;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
examples/redis/ansible/tasks/redis.yml:15 Task/Handler: remove protected mode

]8;id=231688;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
examples/redis/ansible/tasks/redis.yml:27

]8;id=303688;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
examples/redis/ansible/tasks/redis.yml:35

]8;id=630507;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
examples/redis/ansible/tasks/redis.yml:38 Task/Handler: add sshd to firewalld

]8;id=488396;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
examples/redis/ansible/tasks/redis.yml:41

]8;id=709663;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
examples/redis/ansible/tasks/redis.yml:46 Task/Handler: add redis to firewalld

]8;id=213008;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
examples/redis/ansible/tasks/redis.yml:49

]8;id=564703;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
examples/redis/ansible/tasks/redis.yml:54 Task/Handler: add redis-sentinel to firewall

]8;id=260971;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
examples/redis/ansible/tasks/redis.yml:57

]8;id=671894;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[comments]]8;;\: Missing starting space in comment
tests/execute/result/custom/wrong_results.yaml:4

]8;id=753944;https://ansible.readthedocs.io/projects/lint/rules/name/\name[play]]8;;\: All plays should be named.
tests/finish/ansible/data/playbook.yml:1

]8;id=506629;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (copy).
tests/finish/ansible/data/playbook.yml:6 Use `ansible.builtin.copy` or `ansible.legacy.copy` instead.

]8;id=866065;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (command).
tests/finish/ansible/data/playbook.yml:12 Use `ansible.builtin.command` or `ansible.legacy.command` instead.

]8;id=514877;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (command).
tests/finish/ansible/data/playbook.yml:17 Use `ansible.builtin.command` or `ansible.legacy.command` instead.

]8;id=45358;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:7

]8;id=824398;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:11

]8;id=809540;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:29

]8;id=786544;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:34

]8;id=826506;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:50

]8;id=22486;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:114

]8;id=492278;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:135

]8;id=175802;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:150

]8;id=465915;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:155

]8;id=675080;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:170

]8;id=353748;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:176

]8;id=371491;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:191

]8;id=709311;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:196

]8;id=950106;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:211

]8;id=321015;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:216

]8;id=716200;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:234

]8;id=611880;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:243

]8;id=493884;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:259

]8;id=6303;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:325

]8;id=27747;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:330

]8;id=323266;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:346

]8;id=462585;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:414

]8;id=982114;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:419

]8;id=712581;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:434

]8;id=193033;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:468

]8;id=812508;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 12 but found 10
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:471

]8;id=773654;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (234 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:493

]8;id=569599;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 12 but found 10
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:523

]8;id=521418;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (439 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:545

]8;id=210746;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (238 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:546

]8;id=199541;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 12 but found 10
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:574

]8;id=778812;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (357 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:594

]8;id=228182;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (469 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:595

]8;id=294199;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (940 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:596

]8;id=99359;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 12 but found 10
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:626

]8;id=677986;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (191 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:647

]8;id=648083;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 12 but found 10
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:675

]8;id=845080;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (389 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:695

]8;id=80366;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (211 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:697

]8;id=634167;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (243 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:698

]8;id=255613;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:725

]8;id=510120;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:729

]8;id=107924;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:7

]8;id=288744;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:11

]8;id=702758;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:30

]8;id=343266;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:35

]8;id=330951;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:54

]8;id=617992;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:70

]8;id=695415;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:87

]8;id=761537;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:96

]8;id=398956;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:111

]8;id=782470;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:159

]8;id=139355;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:174

]8;id=297567;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:179

]8;id=285258;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:194

]8;id=887088;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:199

]8;id=103330;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:214

]8;id=740872;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:219

]8;id=702253;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:237

]8;id=834932;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:246

]8;id=58659;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:262

]8;id=451142;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:290

]8;id=92273;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:295

]8;id=967751;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:311

]8;id=952119;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:339

]8;id=54977;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:344

]8;id=944699;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:360

]8;id=844706;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:388

]8;id=873452;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:393

]8;id=145993;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:409

]8;id=372683;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:476

]8;id=151191;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:479

]8;id=62992;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:483

]8;id=50632;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_create_dryrun.yaml:7

]8;id=100036;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create_dryrun.yaml:11

]8;id=947679;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:7

]8;id=842565;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:11

]8;id=570727;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:27

]8;id=534473;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:93

]8;id=91885;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:114

]8;id=910047;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:129

]8;id=15656;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:134

]8;id=604453;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:149

]8;id=402402;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:154

]8;id=356886;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:169

]8;id=349758;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:175

]8;id=617976;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:190

]8;id=350235;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:195

]8;id=287689;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:210

]8;id=651395;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:215

]8;id=709252;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:233

]8;id=495138;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:242

]8;id=202223;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:258

]8;id=116296;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:326

]8;id=145371;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:331

]8;id=32737;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:347

]8;id=324500;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:415

]8;id=565272;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:420

]8;id=616834;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:435

]8;id=444597;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:467

]8;id=801949;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:471

]8;id=620909;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_dryrun.yaml:7

]8;id=388756;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_dryrun.yaml:11

]8;id=12630;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_dryrun.yaml:27

]8;id=692300;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_dryrun.yaml:93

]8;id=258375;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_dryrun.yaml:114

]8;id=140546;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_dryrun.yaml:129

]8;id=828565;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_dryrun.yaml:132

]8;id=281905;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_dryrun.yaml:136

]8;id=442228;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:7

]8;id=951632;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:11

]8;id=464685;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:27

]8;id=384754;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:93

]8;id=321851;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:114

]8;id=994671;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:130

]8;id=883486;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:146

]8;id=368345;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:161

]8;id=506385;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:165

]8;id=749128;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:181

]8;id=503286;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:204

]8;id=61162;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:219

]8;id=917358;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:223

]8;id=103202;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:255

]8;id=238346;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:270

]8;id=465845;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:297

]8;id=62533;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:312

]8;id=159129;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:317

]8;id=655786;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:333

]8;id=748292;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:336

]8;id=2291;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:340

]8;id=800094;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:7

]8;id=630315;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:11

]8;id=40857;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:27

]8;id=848849;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:60

]8;id=41380;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:81

]8;id=975916;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:96

]8;id=500208;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:101

]8;id=61387;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:116

]8;id=127346;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:122

]8;id=586806;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:137

]8;id=974739;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:142

]8;id=523708;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:157

]8;id=520145;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:162

]8;id=339125;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:180

]8;id=77777;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:189

]8;id=583442;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:207

]8;id=14882;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:211

]8;id=542068;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:225

]8;id=301778;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:241

]8;id=350419;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:274

]8;id=518638;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:279

]8;id=222692;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:295

]8;id=752752;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:328

]8;id=477101;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:331

]8;id=950964;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:335

]8;id=301687;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:7

]8;id=189949;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:11

]8;id=388027;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:26

]8;id=154833;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:37

]8;id=684676;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:47

]8;id=491956;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:56

]8;id=604530;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:77

]8;id=510437;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:91

]8;id=149877;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:97

]8;id=995435;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:111

]8;id=284366;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:124

]8;id=284893;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:138

]8;id=982708;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_proposed.yaml:7

]8;id=90735;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_proposed.yaml:11

]8;id=321790;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_proposed.yaml:26

]8;id=103269;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_proposed.yaml:37

]8;id=946914;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_proposed.yaml:47

]8;id=743287;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_proposed.yaml:56

]8;id=407454;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:7

]8;id=488791;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:11

]8;id=133582;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:25

]8;id=705355;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:36

]8;id=228532;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:76

]8;id=679795;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:85

]8;id=557280;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:90

]8;id=663800;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:104

]8;id=680849;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:115

]8;id=905628;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:154

]8;id=539258;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:163

]8;id=557681;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:196

]8;id=27000;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:211

]8;id=577897;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:215

]8;id=696729;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:229

]8;id=739992;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:243

]8;id=960963;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:249

]8;id=870711;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:263

]8;id=430559;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:267

]8;id=540902;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:283

]8;id=298795;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:306

]8;id=356914;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:321

]8;id=169033;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:328

]8;id=923402;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:342

]8;id=553671;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:7

]8;id=73650;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:11

]8;id=117774;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:25

]8;id=536511;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:64

]8;id=176162;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:78

]8;id=982655;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:133

]8;id=951941;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:148

]8;id=730960;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:152

]8;id=671511;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:166

]8;id=800801;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:180

]8;id=671205;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:185

]8;id=356405;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:199

]8;id=804981;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_polarion/PolarionExport.test_coverage_bugzilla.yaml:7

]8;id=574572;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_polarion/PolarionExport.test_coverage_bugzilla.yaml:11

]8;id=743002;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_polarion/PolarionExport.test_create.yaml:7

]8;id=673099;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_polarion/PolarionExport.test_create.yaml:11

]8;id=568341;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_polarion/PolarionExport.test_existing.yaml:7

]8;id=968378;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_polarion/PolarionExport.test_existing.yaml:11

]8;id=918283;https://ansible.readthedocs.io/projects/lint/rules/name/\name[play]]8;;\: All plays should be named.
tests/prepare/ansible/data/playbook.yml:1

]8;id=416008;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (copy).
tests/prepare/ansible/data/playbook.yml:6 Use `ansible.builtin.copy` or `ansible.legacy.copy` instead.

]8;id=514224;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (command).
tests/prepare/ansible/data/playbook.yml:12 Use `ansible.builtin.command` or `ansible.legacy.command` instead.

]8;id=387110;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (command).
tests/prepare/ansible/data/playbook.yml:17 Use `ansible.builtin.command` or `ansible.legacy.command` instead.

]8;id=604194;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
tests/run/worktree/data/ansible/playbook.yml:1

]8;id=463744;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (copy).
tests/run/worktree/data/ansible/playbook.yml:4 Use `ansible.builtin.copy` or `ansible.legacy.copy` instead.

]8;id=29731;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
tests/run/worktree/data/ansible/playbook.yml:4 Task/Handler: copy test file

]8;id=9870;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (command).
tests/run/worktree/data/ansible/playbook.yml:9 Use `ansible.builtin.command` or `ansible.legacy.command` instead.

]8;id=831870;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
tests/run/worktree/data/ansible/playbook.yml:9 Task/Handler: check test file

]8;id=726969;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[brackets]]8;;\: Too many spaces inside brackets
tmt/steps/provision/mrack/mrack-provisioning-config.yaml:100

Read ]8;id=537556;https://ansible.readthedocs.io/projects/lint/configuring/#ignoring-rules-for-entire-files\documentation]8;;\ for instructions on how to ignore specific rule violations.

                        Rule Violation Summary
 count tag                      profile    rule associated tags
     1 ]8;id=657515;https://ansible.readthedocs.io/projects/lint/rules/command-instead-of-shell\command-instead-of-shell]8;;\ basic      command-shell, idiom
     1 ]8;id=559565;https://ansible.readthedocs.io/projects/lint/rules/no-free-form\no-free-form]8;;\             basic      syntax, risk
     1 ]8;id=286110;https://ansible.readthedocs.io/projects/lint/rules/schema\schema[playbook]]8;;\         basic      core
     2 ]8;id=594646;https://ansible.readthedocs.io/projects/lint/rules/name\name[missing]]8;;\            basic      idiom
     5 ]8;id=32110;https://ansible.readthedocs.io/projects/lint/rules/name\name[play]]8;;\               basic      idiom
     3 ]8;id=621294;https://ansible.readthedocs.io/projects/lint/rules/yaml\yaml[brackets]]8;;\           basic      formatting, yaml
     1 ]8;id=37513;https://ansible.readthedocs.io/projects/lint/rules/yaml\yaml[comments]]8;;\           basic      formatting, yaml
     4 ]8;id=532422;https://ansible.readthedocs.io/projects/lint/rules/yaml\yaml[hyphens]]8;;\            basic      formatting, yaml
   231 ]8;id=883685;https://ansible.readthedocs.io/projects/lint/rules/yaml\yaml[indentation]]8;;\        basic      formatting, yaml
    14 ]8;id=487924;https://ansible.readthedocs.io/projects/lint/rules/yaml\yaml[line-length]]8;;\        basic      formatting, yaml
    15 ]8;id=207635;https://ansible.readthedocs.io/projects/lint/rules/yaml\yaml[truthy]]8;;\             basic      formatting, yaml
     9 ]8;id=374731;https://ansible.readthedocs.io/projects/lint/rules/name\name[casing]]8;;\             moderate   idiom
     1 ]8;id=146870;https://ansible.readthedocs.io/projects/lint/rules/risky-file-permissions\risky-file-permissions]8;;\   safety     unpredictability
     1 ]8;id=361869;https://ansible.readthedocs.io/projects/lint/rules/no-changed-when\no-changed-when]8;;\          shared     command-shell, idempotency
    14 ]8;id=546732;https://ansible.readthedocs.io/projects/lint/rules/fqcn\fqcn[action-core]]8;;\        production formatting

Failed: 303 failure(s), 0 warning(s) on 1248 files. Last profile that met the validation criteria was 'min'.

ruff.................................................(no files to check)Skipped
tmt lint.............................................(no files to check)Skipped
(tmt) huanli@kvm-01-guest06:dev$
```
