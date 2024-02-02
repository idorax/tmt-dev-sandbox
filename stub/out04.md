```bash

(tmt) huanli@kvm-01-guest06:dev$ git diff
diff --git a/.pre-commit-config.yaml b/.pre-commit-config.yaml
index 19245040..f7c0604c 100644
--- a/.pre-commit-config.yaml
+++ b/.pre-commit-config.yaml
@@ -97,7 +97,7 @@ repos:
         files: ^tmt/schemas/.*\.yaml
 
   - repo: https://github.com/ansible-community/ansible-lint.git
-    rev: v5.3.2
+    rev: v6.22.2
     hooks:
       - id: ansible-lint
         files: \.(yaml|yml)$


(tmt) huanli@kvm-01-guest06:dev$ git commit -s -a -m "update revision of ansible-lint" 
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
INFO     Executing syntax check on playbook tests/run/worktree/data/ansible/playbook.yml (0.69s)
INFO     Executing syntax check on playbook ansible/packages.yml (0.68s)
INFO     Executing syntax check on playbook tmt/steps/prepare/feature/epel-disable.yaml (0.71s)
INFO     Executing syntax check on playbook tests/prepare/ansible/data/playbook.yml (0.67s)
INFO     Executing syntax check on playbook tests/finish/ansible/data/playbook.yml (0.67s)
INFO     Executing syntax check on playbook examples/ansible/test.yml (0.70s)
INFO     Executing syntax check on playbook tmt/steps/prepare/feature/epel-enable.yaml (0.64s)
INFO     Executing syntax check on playbook examples/redis/ansible/setup_server.yml (0.68s)
WARNING  Ignored exception from VariableNamingRule.<bound method VariableNamingRule.matchyaml of var-naming: All variables should be named using only lowercase and underscores.> while processing examples/redis/ansible/setup_server.yml (playbook): list indices must be integers or slices, not str
WARNING  Listing 303 violation(s) that are fatal
]8;id=24262;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
.github/workflows/pre-commit.yml:12

]8;id=117177;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[brackets]]8;;\: Too many spaces inside brackets
.github/workflows/shellcheck.yml:4

]8;id=383240;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[brackets]]8;;\: Too many spaces inside brackets
.github/workflows/shellcheck.yml:6

]8;id=637381;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:25

]8;id=673097;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 8
.packit.yaml:27

]8;id=281260;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 8
.packit.yaml:47

]8;id=144773;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 12
.packit.yaml:48

]8;id=930407;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 14 but found 16
.packit.yaml:49

]8;id=350055;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:65

]8;id=865285;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 8
.packit.yaml:69

]8;id=768454;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 12
.packit.yaml:70

]8;id=878014;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 14 but found 16
.packit.yaml:71

]8;id=913939;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 14 but found 16
.packit.yaml:74

]8;id=501542;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 18 but found 20
.packit.yaml:75

]8;id=212694;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:83

]8;id=515990;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 8
.packit.yaml:87

]8;id=110594;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 14 but found 16
.packit.yaml:89

]8;id=520125;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 18 but found 20
.packit.yaml:90

]8;id=171390;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 22 but found 24
.packit.yaml:91

]8;id=201114;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:99

]8;id=361842;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 8
.packit.yaml:103

]8;id=699145;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 14 but found 16
.packit.yaml:105

]8;id=362435;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 18 but found 20
.packit.yaml:106

]8;id=103486;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 22 but found 24
.packit.yaml:107

]8;id=754544;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:116

]8;id=333517;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:117

]8;id=610241;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:118

]8;id=30329;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 8
.packit.yaml:123

]8;id=660866;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:138

]8;id=251007;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:139

]8;id=119839;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
.packit.yaml:140

]8;id=385689;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 8
.packit.yaml:144

]8;id=678782;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
.pre-commit-config.yaml:119

]8;id=678796;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[hyphens]]8;;\: Too many spaces after hyphen
.pre-commit-hooks.yaml:1

]8;id=27953;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (193 > 160 characters)
.pre-commit-hooks.yaml:3

]8;id=430164;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[hyphens]]8;;\: Too many spaces after hyphen
.pre-commit-hooks.yaml:10

]8;id=440696;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (199 > 160 characters)
.pre-commit-hooks.yaml:12

]8;id=161917;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[hyphens]]8;;\: Too many spaces after hyphen
.pre-commit-hooks.yaml:19

]8;id=972830;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (199 > 160 characters)
.pre-commit-hooks.yaml:21

]8;id=571233;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[hyphens]]8;;\: Too many spaces after hyphen
.pre-commit-hooks.yaml:28

]8;id=744908;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (201 > 160 characters)
.pre-commit-hooks.yaml:30

]8;id=804687;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
.readthedocs.yaml:10

]8;id=669333;https://ansible.readthedocs.io/projects/lint/rules/name/\name[play]]8;;\: All plays should be named.
ansible/packages.yml:1

]8;id=814856;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (dnf).
ansible/packages.yml:3 Use `ansible.builtin.dnf` or `ansible.legacy.dnf` instead.

]8;id=527757;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected at least 3
ansible/packages.yml:3

]8;id=289332;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
docs/toolbelt-catalog.yaml:21

]8;id=110812;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
docs/toolbelt-catalog.yaml:50

]8;id=914466;https://ansible.readthedocs.io/projects/lint/rules/name/\name[play]]8;;\: All plays should be named.
examples/ansible/test.yml:1

]8;id=170100;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (copy).
examples/ansible/test.yml:3 Use `ansible.builtin.copy` or `ansible.legacy.copy` instead.

]8;id=858330;https://ansible.readthedocs.io/projects/lint/rules/risky-file-permissions/\risky-file-permissions]8;;\: File permissions unset or incorrect.
examples/ansible/test.yml:3 Task/Handler: Create a simple test file

]8;id=453794;https://ansible.readthedocs.io/projects/lint/rules/command-instead-of-shell/\command-instead-of-shell]8;;\: Use shell only when shell functionality is required.
examples/ansible/test.yml:7 Task/Handler: Check the file content

]8;id=864139;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (shell).
examples/ansible/test.yml:7 Use `ansible.builtin.shell` or `ansible.legacy.shell` instead.

]8;id=436287;https://ansible.readthedocs.io/projects/lint/rules/no-changed-when/\no-changed-when]8;;\: Commands should not change things if nothing needs doing.
examples/ansible/test.yml:7 Task/Handler: Check the file content

]8;id=920399;https://ansible.readthedocs.io/projects/lint/rules/schema/\schema[playbook]]8;;\: $[0].vars [{'version': '{{ ansible_distribution_version }}'}] is not of type 'object'
examples/redis/ansible/setup_server.yml:1  Returned errors will not include exact line numbers, but they will mention
the schema name being used as a tag, like ``schema[playbook]``,
``schema[tasks]``.

This rule is not skippable and stops further processing of the file.

If incorrect schema was picked, you might want to either:

* move the file to standard location, so its file is detected correctly.
* use ``kinds:`` option in linter config to help it pick correct file type.


]8;id=68175;https://ansible.readthedocs.io/projects/lint/rules/name/\name[play]]8;;\: All plays should be named.
examples/redis/ansible/setup_server.yml:2

]8;id=46368;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (import_tasks).
examples/redis/ansible/setup_server.yml:6 Use `ansible.builtin.import_tasks` or `ansible.legacy.import_tasks` instead.

]8;id=414632;https://ansible.readthedocs.io/projects/lint/rules/name/\name[missing]]8;;\: All tasks should be named.
examples/redis/ansible/setup_server.yml:6 Task/Handler: import_tasks tasks/redis.yml

]8;id=230434;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (import_tasks).
examples/redis/ansible/setup_server.yml:7 Use `ansible.builtin.import_tasks` or `ansible.legacy.import_tasks` instead.

]8;id=554236;https://ansible.readthedocs.io/projects/lint/rules/name/\name[missing]]8;;\: All tasks should be named.
examples/redis/ansible/setup_server.yml:7 Task/Handler: import_tasks tasks/redis_variables.yml

]8;id=697949;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (package).
examples/redis/ansible/tasks/redis.yml:1 Use `ansible.builtin.package` or `ansible.legacy.package` instead.

]8;id=515302;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
examples/redis/ansible/tasks/redis.yml:1 Task/Handler: setup syncing redis server

]8;id=791149;https://ansible.readthedocs.io/projects/lint/rules/no-free-form/\no-free-form]8;;\: Avoid using free-form when calling module actions. (package)
examples/redis/ansible/tasks/redis.yml:1 Task/Handler: setup syncing redis server

]8;id=945971;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected at least 3
examples/redis/ansible/tasks/redis.yml:4

]8;id=825039;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
examples/redis/ansible/tasks/redis.yml:8 Task/Handler: bind to all interfaces

]8;id=544832;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
examples/redis/ansible/tasks/redis.yml:15 Task/Handler: remove protected mode

]8;id=196543;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
examples/redis/ansible/tasks/redis.yml:27

]8;id=127179;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
examples/redis/ansible/tasks/redis.yml:35

]8;id=535173;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
examples/redis/ansible/tasks/redis.yml:38 Task/Handler: add sshd to firewalld

]8;id=578005;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
examples/redis/ansible/tasks/redis.yml:41

]8;id=921882;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
examples/redis/ansible/tasks/redis.yml:46 Task/Handler: add redis to firewalld

]8;id=539958;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
examples/redis/ansible/tasks/redis.yml:49

]8;id=380125;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
examples/redis/ansible/tasks/redis.yml:54 Task/Handler: add redis-sentinel to firewall

]8;id=338168;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[truthy]]8;;\: Truthy value should be one of [false, true]
examples/redis/ansible/tasks/redis.yml:57

]8;id=825345;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[comments]]8;;\: Missing starting space in comment
tests/execute/result/custom/wrong_results.yaml:4

]8;id=778426;https://ansible.readthedocs.io/projects/lint/rules/name/\name[play]]8;;\: All plays should be named.
tests/finish/ansible/data/playbook.yml:1

]8;id=650991;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (copy).
tests/finish/ansible/data/playbook.yml:6 Use `ansible.builtin.copy` or `ansible.legacy.copy` instead.

]8;id=483299;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (command).
tests/finish/ansible/data/playbook.yml:12 Use `ansible.builtin.command` or `ansible.legacy.command` instead.

]8;id=12690;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (command).
tests/finish/ansible/data/playbook.yml:17 Use `ansible.builtin.command` or `ansible.legacy.command` instead.

]8;id=328199;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:7

]8;id=715678;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:11

]8;id=281325;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:29

]8;id=617986;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:34

]8;id=227873;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:50

]8;id=305497;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:114

]8;id=363738;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:135

]8;id=489583;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:150

]8;id=257009;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:155

]8;id=306625;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:170

]8;id=663898;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:176

]8;id=233729;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:191

]8;id=862192;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:196

]8;id=533048;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:211

]8;id=824485;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:216

]8;id=945472;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:234

]8;id=94207;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:243

]8;id=946919;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:259

]8;id=182030;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:325

]8;id=168401;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:330

]8;id=805386;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:346

]8;id=373974;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:414

]8;id=721240;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:419

]8;id=207676;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:434

]8;id=943119;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:468

]8;id=277971;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 12 but found 10
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:471

]8;id=924268;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (234 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:493

]8;id=146451;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 12 but found 10
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:523

]8;id=374045;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (439 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:545

]8;id=430705;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (238 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:546

]8;id=971250;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 12 but found 10
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:574

]8;id=862486;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (357 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:594

]8;id=305049;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (469 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:595

]8;id=558701;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (940 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:596

]8;id=444142;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 12 but found 10
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:626

]8;id=823560;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (191 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:647

]8;id=24930;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 12 but found 10
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:675

]8;id=6248;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (389 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:695

]8;id=399639;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (211 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:697

]8;id=877604;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[line-length]]8;;\: Line too long (243 > 160 characters)
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:698

]8;id=318299;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:725

]8;id=434469;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml:729

]8;id=725003;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:7

]8;id=229812;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:11

]8;id=964327;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:30

]8;id=973682;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:35

]8;id=641400;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:54

]8;id=900337;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:70

]8;id=799819;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:87

]8;id=61421;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:96

]8;id=117148;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:111

]8;id=388326;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:159

]8;id=467029;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:174

]8;id=610096;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:179

]8;id=336028;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:194

]8;id=937446;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:199

]8;id=823568;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:214

]8;id=163247;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:219

]8;id=722959;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:237

]8;id=46041;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:246

]8;id=802191;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:262

]8;id=23260;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:290

]8;id=333673;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:295

]8;id=638467;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:311

]8;id=420081;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:339

]8;id=741900;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:344

]8;id=652793;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:360

]8;id=753957;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:388

]8;id=410558;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:393

]8;id=272048;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:409

]8;id=796922;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:476

]8;id=957327;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:479

]8;id=457626;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml:483

]8;id=613863;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_create_dryrun.yaml:7

]8;id=379761;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_create_dryrun.yaml:11

]8;id=943508;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:7

]8;id=70048;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:11

]8;id=601204;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:27

]8;id=494093;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:93

]8;id=245038;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:114

]8;id=762267;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:129

]8;id=575301;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:134

]8;id=59403;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:149

]8;id=28542;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:154

]8;id=622510;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:169

]8;id=410294;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:175

]8;id=66743;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:190

]8;id=35929;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:195

]8;id=985146;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:210

]8;id=155610;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:215

]8;id=115389;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:233

]8;id=209079;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:242

]8;id=525707;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:258

]8;id=177257;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:326

]8;id=867828;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:331

]8;id=140126;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:347

]8;id=200702;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:415

]8;id=538662;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:420

]8;id=539659;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:435

]8;id=918998;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:467

]8;id=524149;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml:471

]8;id=499873;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_dryrun.yaml:7

]8;id=378946;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_dryrun.yaml:11

]8;id=905144;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_dryrun.yaml:27

]8;id=220290;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_dryrun.yaml:93

]8;id=177704;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_dryrun.yaml:114

]8;id=785062;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_dryrun.yaml:129

]8;id=246583;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_dryrun.yaml:132

]8;id=655232;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_dryrun.yaml:136

]8;id=576724;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:7

]8;id=850815;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:11

]8;id=57343;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:27

]8;id=72906;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:93

]8;id=361139;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:114

]8;id=508484;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:130

]8;id=42198;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:146

]8;id=989361;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:161

]8;id=497739;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:165

]8;id=337978;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:181

]8;id=326931;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:204

]8;id=412146;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:219

]8;id=38288;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:223

]8;id=567231;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:255

]8;id=378490;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:270

]8;id=766759;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:297

]8;id=174573;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:312

]8;id=442988;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:317

]8;id=42015;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:333

]8;id=489154;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:336

]8;id=326981;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml:340

]8;id=871100;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:7

]8;id=406635;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:11

]8;id=200556;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:27

]8;id=872084;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:60

]8;id=652976;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:81

]8;id=934089;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:96

]8;id=735899;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:101

]8;id=739853;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:116

]8;id=986013;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:122

]8;id=335260;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:137

]8;id=851752;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:142

]8;id=683540;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:157

]8;id=628759;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:162

]8;id=857031;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:180

]8;id=265878;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:189

]8;id=123711;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:207

]8;id=583853;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:211

]8;id=616902;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:225

]8;id=716831;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:241

]8;id=339616;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:274

]8;id=405941;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:279

]8;id=252524;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:295

]8;id=154332;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:328

]8;id=841166;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:331

]8;id=36228;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml:335

]8;id=58557;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:7

]8;id=784763;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:11

]8;id=988659;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:26

]8;id=861295;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:37

]8;id=889975;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:47

]8;id=728303;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:56

]8;id=312470;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:77

]8;id=736883;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:91

]8;id=542390;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:97

]8;id=585110;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:111

]8;id=881374;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:124

]8;id=582336;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml:138

]8;id=312020;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_proposed.yaml:7

]8;id=375146;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_proposed.yaml:11

]8;id=113447;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_proposed.yaml:26

]8;id=886174;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_proposed.yaml:37

]8;id=645508;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_proposed.yaml:47

]8;id=924827;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_proposed.yaml:56

]8;id=322564;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:7

]8;id=583582;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:11

]8;id=98204;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:25

]8;id=616243;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:36

]8;id=298453;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:76

]8;id=127601;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:85

]8;id=773286;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:90

]8;id=471168;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:104

]8;id=104001;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:115

]8;id=170930;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:154

]8;id=947992;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:163

]8;id=208415;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:196

]8;id=267407;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:211

]8;id=872466;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:215

]8;id=215248;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:229

]8;id=563958;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:243

]8;id=899082;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:249

]8;id=426641;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:263

]8;id=900203;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:267

]8;id=823067;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:283

]8;id=146348;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:306

]8;id=709909;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:321

]8;id=983114;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:328

]8;id=925168;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml:342

]8;id=865796;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:7

]8;id=879576;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:11

]8;id=209185;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:25

]8;id=897874;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:64

]8;id=173706;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:78

]8;id=988191;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:133

]8;id=426128;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:148

]8;id=256410;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 10 but found 8
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:152

]8;id=267012;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:166

]8;id=874234;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:180

]8;id=464974;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:185

]8;id=825845;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 6 but found 4
tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml:199

]8;id=651572;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_polarion/PolarionExport.test_coverage_bugzilla.yaml:7

]8;id=745390;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_polarion/PolarionExport.test_coverage_bugzilla.yaml:11

]8;id=888808;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_polarion/PolarionExport.test_create.yaml:7

]8;id=415160;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_polarion/PolarionExport.test_create.yaml:11

]8;id=238694;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 4 but found 2
tests/integration/test_data/test_polarion/PolarionExport.test_existing.yaml:7

]8;id=474757;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[indentation]]8;;\: Wrong indentation: expected 8 but found 6
tests/integration/test_data/test_polarion/PolarionExport.test_existing.yaml:11

]8;id=931365;https://ansible.readthedocs.io/projects/lint/rules/name/\name[play]]8;;\: All plays should be named.
tests/prepare/ansible/data/playbook.yml:1

]8;id=663978;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (copy).
tests/prepare/ansible/data/playbook.yml:6 Use `ansible.builtin.copy` or `ansible.legacy.copy` instead.

]8;id=315543;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (command).
tests/prepare/ansible/data/playbook.yml:12 Use `ansible.builtin.command` or `ansible.legacy.command` instead.

]8;id=723453;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (command).
tests/prepare/ansible/data/playbook.yml:17 Use `ansible.builtin.command` or `ansible.legacy.command` instead.

]8;id=457603;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
tests/run/worktree/data/ansible/playbook.yml:1

]8;id=327331;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (copy).
tests/run/worktree/data/ansible/playbook.yml:4 Use `ansible.builtin.copy` or `ansible.legacy.copy` instead.

]8;id=710967;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
tests/run/worktree/data/ansible/playbook.yml:4 Task/Handler: copy test file

]8;id=221602;https://ansible.readthedocs.io/projects/lint/rules/fqcn/\fqcn[action-core]]8;;\: Use FQCN for builtin module actions (command).
tests/run/worktree/data/ansible/playbook.yml:9 Use `ansible.builtin.command` or `ansible.legacy.command` instead.

]8;id=817433;https://ansible.readthedocs.io/projects/lint/rules/name/\name[casing]]8;;\: All names should start with an uppercase letter.
tests/run/worktree/data/ansible/playbook.yml:9 Task/Handler: check test file

]8;id=303525;https://ansible.readthedocs.io/projects/lint/rules/yaml/\yaml[brackets]]8;;\: Too many spaces inside brackets
tmt/steps/provision/mrack/mrack-provisioning-config.yaml:100

Read ]8;id=8773;https://ansible.readthedocs.io/projects/lint/configuring/#ignoring-rules-for-entire-files\documentation]8;;\ for instructions on how to ignore specific rule violations.

                        Rule Violation Summary                        
 count tag                      profile    rule associated tags       
     1 ]8;id=950453;https://ansible.readthedocs.io/projects/lint/rules/command-instead-of-shell\command-instead-of-shell]8;;\ basic      command-shell, idiom       
     1 ]8;id=770100;https://ansible.readthedocs.io/projects/lint/rules/no-free-form\no-free-form]8;;\             basic      syntax, risk               
     1 ]8;id=481390;https://ansible.readthedocs.io/projects/lint/rules/schema\schema[playbook]]8;;\         basic      core                       
     2 ]8;id=780130;https://ansible.readthedocs.io/projects/lint/rules/name\name[missing]]8;;\            basic      idiom                      
     5 ]8;id=780130;https://ansible.readthedocs.io/projects/lint/rules/name\name[play]]8;;\               basic      idiom                      
     3 ]8;id=463256;https://ansible.readthedocs.io/projects/lint/rules/yaml\yaml[brackets]]8;;\           basic      formatting, yaml           
     1 ]8;id=463256;https://ansible.readthedocs.io/projects/lint/rules/yaml\yaml[comments]]8;;\           basic      formatting, yaml           
     4 ]8;id=463256;https://ansible.readthedocs.io/projects/lint/rules/yaml\yaml[hyphens]]8;;\            basic      formatting, yaml           
   231 ]8;id=463256;https://ansible.readthedocs.io/projects/lint/rules/yaml\yaml[indentation]]8;;\        basic      formatting, yaml           
    14 ]8;id=463256;https://ansible.readthedocs.io/projects/lint/rules/yaml\yaml[line-length]]8;;\        basic      formatting, yaml           
    15 ]8;id=463256;https://ansible.readthedocs.io/projects/lint/rules/yaml\yaml[truthy]]8;;\             basic      formatting, yaml           
     9 ]8;id=780130;https://ansible.readthedocs.io/projects/lint/rules/name\name[casing]]8;;\             moderate   idiom                      
     1 ]8;id=696355;https://ansible.readthedocs.io/projects/lint/rules/risky-file-permissions\risky-file-permissions]8;;\   safety     unpredictability           
     1 ]8;id=447515;https://ansible.readthedocs.io/projects/lint/rules/no-changed-when\no-changed-when]8;;\          shared     command-shell, idempotency 
    14 ]8;id=576037;https://ansible.readthedocs.io/projects/lint/rules/fqcn\fqcn[action-core]]8;;\        production formatting                 

Failed: 303 failure(s), 0 warning(s) on 1248 files. Last profile that met the validation criteria was 'min'.

ruff.................................................(no files to check)Skipped
tmt lint.............................................(no files to check)Skipped
```
