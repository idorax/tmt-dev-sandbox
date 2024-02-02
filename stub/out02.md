```bash
(tmt) huanli@kvm-01-guest06:feature$ sudo dnf -y install python3-ansible-lint

(tmt) huanli@kvm-01-guest06:feature$ ansible-lint --version --nocolor
ansible-lint 6.13.1 using ansible 2.14.11
A new release of ansible-lint is available: 6.13.1 → 6.22.2
(tmt) huanli@kvm-01-guest06:feature$

(tmt) huanli@kvm-01-guest06:feature$ alias al='ansible-lint --nocolor --offline'
(tmt) huanli@kvm-01-guest06:feature$

###################################################################################################
# ansible-lint --nocolor --offline epel-enable.yaml
###################################################################################################
(tmt) huanli@kvm-01-guest06:feature$ al epel-enable.yaml
WARNING  Listing 33 violation(s) that are fatal
name[play]: All plays should be named.
epel-enable.yaml:1

jinja[spacing]: Jinja2 spacing could be improved: ansible_distribution == 'RedHat' and ansible_distribution_major_version|int == 7 -> ansible_distribution == 'RedHat' and ansible_distribution_major_version | int == 7 (warning)
epel-enable.yaml:4 Jinja2 template rewrite recommendation: `ansible_distribution == 'RedHat' and ansible_distribution_major_version | int == 7`.

name[missing]: All tasks should be named.
epel-enable.yaml:4 Task/Handler: block/always/rescue

command-instead-of-shell: Use shell only when shell functionality is required.
epel-enable.yaml:17 Task/Handler: Enable repos of 'epel'

fqcn[action-core]: Use FQCN for builtin module actions (shell).
epel-enable.yaml:17 Use `ansible.builtin.shell` or `ansible.legacy.shell` instead.

no-changed-when: Commands should not change things if nothing needs doing.
epel-enable.yaml:17 Task/Handler: Enable repos of 'epel'

jinja[spacing]: Jinja2 spacing could be improved: ansible_distribution == "RedHat" and ansible_distribution_major_version|int >= 8 -> ansible_distribution == "RedHat" and ansible_distribution_major_version | int >= 8 (warning)
epel-enable.yaml:21 Jinja2 template rewrite recommendation: `ansible_distribution == "RedHat" and ansible_distribution_major_version | int >= 8`.

name[missing]: All tasks should be named.
epel-enable.yaml:21 Task/Handler: block/always/rescue

command-instead-of-shell: Use shell only when shell functionality is required.
epel-enable.yaml:35 Task/Handler: Install 'dnf config-manager'

fqcn[action-core]: Use FQCN for builtin module actions (shell).
epel-enable.yaml:35 Use `ansible.builtin.shell` or `ansible.legacy.shell` instead.

no-changed-when: Commands should not change things if nothing needs doing.
epel-enable.yaml:35 Task/Handler: Install 'dnf config-manager'

command-instead-of-shell: Use shell only when shell functionality is required.
epel-enable.yaml:38 Task/Handler: Enable repos of 'epel'

fqcn[action-core]: Use FQCN for builtin module actions (shell).
epel-enable.yaml:38 Use `ansible.builtin.shell` or `ansible.legacy.shell` instead.

no-changed-when: Commands should not change things if nothing needs doing.
epel-enable.yaml:38 Task/Handler: Enable repos of 'epel'

command-instead-of-shell: Use shell only when shell functionality is required.
epel-enable.yaml:41 Task/Handler: Enable repos of 'epel-next'

fqcn[action-core]: Use FQCN for builtin module actions (shell).
epel-enable.yaml:41 Use `ansible.builtin.shell` or `ansible.legacy.shell` instead.

no-changed-when: Commands should not change things if nothing needs doing.
epel-enable.yaml:41 Task/Handler: Enable repos of 'epel-next'

jinja[spacing]: Jinja2 spacing could be improved: ansible_distribution == "CentOS" and ansible_distribution_major_version|int == 7 -> ansible_distribution == "CentOS" and ansible_distribution_major_version | int == 7 (warning)
epel-enable.yaml:45 Jinja2 template rewrite recommendation: `ansible_distribution == "CentOS" and ansible_distribution_major_version | int == 7`.

name[missing]: All tasks should be named.
epel-enable.yaml:45 Task/Handler: block/always/rescue

command-instead-of-shell: Use shell only when shell functionality is required.
epel-enable.yaml:57 Task/Handler: Enable repos of 'epel'

fqcn[action-core]: Use FQCN for builtin module actions (shell).
epel-enable.yaml:57 Use `ansible.builtin.shell` or `ansible.legacy.shell` instead.

no-changed-when: Commands should not change things if nothing needs doing.
epel-enable.yaml:57 Task/Handler: Enable repos of 'epel'

jinja[spacing]: Jinja2 spacing could be improved: ansible_distribution == "CentOS" and ansible_distribution_major_version|int >= 8 -> ansible_distribution == "CentOS" and ansible_distribution_major_version | int >= 8 (warning)
epel-enable.yaml:61 Jinja2 template rewrite recommendation: `ansible_distribution == "CentOS" and ansible_distribution_major_version | int >= 8`.

name[missing]: All tasks should be named.
epel-enable.yaml:61 Task/Handler: block/always/rescue

command-instead-of-shell: Use shell only when shell functionality is required.
epel-enable.yaml:73 Task/Handler: Install 'dnf config-manager'

fqcn[action-core]: Use FQCN for builtin module actions (shell).
epel-enable.yaml:73 Use `ansible.builtin.shell` or `ansible.legacy.shell` instead.

no-changed-when: Commands should not change things if nothing needs doing.
epel-enable.yaml:73 Task/Handler: Install 'dnf config-manager'

command-instead-of-shell: Use shell only when shell functionality is required.
epel-enable.yaml:76 Task/Handler: Enable repos of 'epel'

fqcn[action-core]: Use FQCN for builtin module actions (shell).
epel-enable.yaml:76 Use `ansible.builtin.shell` or `ansible.legacy.shell` instead.

no-changed-when: Commands should not change things if nothing needs doing.
epel-enable.yaml:76 Task/Handler: Enable repos of 'epel'

command-instead-of-shell: Use shell only when shell functionality is required.
epel-enable.yaml:79 Task/Handler: Enable repos of 'epel-next'

fqcn[action-core]: Use FQCN for builtin module actions (shell).
epel-enable.yaml:79 Use `ansible.builtin.shell` or `ansible.legacy.shell` instead.

no-changed-when: Commands should not change things if nothing needs doing.
epel-enable.yaml:79 Task/Handler: Enable repos of 'epel-next'

Read documentation for instructions on how to ignore specific rule violations.

                        Rule Violation Summary
 count tag                      profile    rule associated tags
     8 command-instead-of-shell basic      command-shell, idiom
     4 jinja[spacing]           basic      formatting (warning)
     4 name[missing]            basic      idiom
     1 name[play]               basic      idiom
     8 no-changed-when          shared     command-shell, idempotency
     8 fqcn[action-core]        production formatting

Failed after min profile: 29 failure(s), 4 warning(s) on 1 files.
(tmt) huanli@kvm-01-guest06:feature$

###################################################################################################
# ansible-lint --nocolor --offline epel-disable.yaml
###################################################################################################
(tmt) huanli@kvm-01-guest06:feature$ al epel-disable.yaml
WARNING  Listing 29 violation(s) that are fatal
name[play]: All plays should be named.
epel-disable.yaml:1

jinja[spacing]: Jinja2 spacing could be improved: ansible_distribution_major_version|int == 7 -> ansible_distribution_major_version | int == 7 (warning)
epel-disable.yaml:4 Jinja2 template rewrite recommendation: `ansible_distribution_major_version | int == 7`.

name[missing]: All tasks should be named.
epel-disable.yaml:4 Task/Handler: block/always/rescue

command-instead-of-module: rpm used in place of yum or rpm_key module
epel-disable.yaml:12 Task/Handler: Detect package 'epel-release' is installed

fqcn[action-core]: Use FQCN for builtin module actions (command).
epel-disable.yaml:12 Use `ansible.builtin.command` or `ansible.legacy.command` instead.

no-changed-when: Commands should not change things if nothing needs doing.
epel-disable.yaml:12 Task/Handler: Detect package 'epel-release' is installed

yaml[truthy]: Truthy value should be one of [false, true]
epel-disable.yaml:15

command-instead-of-shell: Use shell only when shell functionality is required.
epel-disable.yaml:17 Task/Handler: Disable repos of 'epel'

fqcn[action-core]: Use FQCN for builtin module actions (shell).
epel-disable.yaml:17 Use `ansible.builtin.shell` or `ansible.legacy.shell` instead.

no-changed-when: Commands should not change things if nothing needs doing.
epel-disable.yaml:17 Task/Handler: Disable repos of 'epel'

jinja[spacing]: Jinja2 spacing could be improved: ansible_distribution_major_version|int >= 8 -> ansible_distribution_major_version | int >= 8 (warning)
epel-disable.yaml:22 Jinja2 template rewrite recommendation: `ansible_distribution_major_version | int >= 8`.

name[missing]: All tasks should be named.
epel-disable.yaml:22 Task/Handler: block/always/rescue

command-instead-of-shell: Use shell only when shell functionality is required.
epel-disable.yaml:24 Task/Handler: Install 'dnf config-manager'

fqcn[action-core]: Use FQCN for builtin module actions (shell).
epel-disable.yaml:24 Use `ansible.builtin.shell` or `ansible.legacy.shell` instead.

no-changed-when: Commands should not change things if nothing needs doing.
epel-disable.yaml:24 Task/Handler: Install 'dnf config-manager'

command-instead-of-module: rpm used in place of yum or rpm_key module
epel-disable.yaml:28 Task/Handler: Detect package 'epel-release' is installed

fqcn[action-core]: Use FQCN for builtin module actions (command).
epel-disable.yaml:28 Use `ansible.builtin.command` or `ansible.legacy.command` instead.

no-changed-when: Commands should not change things if nothing needs doing.
epel-disable.yaml:28 Task/Handler: Detect package 'epel-release' is installed

yaml[truthy]: Truthy value should be one of [false, true]
epel-disable.yaml:31

command-instead-of-shell: Use shell only when shell functionality is required.
epel-disable.yaml:33 Task/Handler: Disable repos of 'epel' if package 'epel-release' is installed

fqcn[action-core]: Use FQCN for builtin module actions (shell).
epel-disable.yaml:33 Use `ansible.builtin.shell` or `ansible.legacy.shell` instead.

no-changed-when: Commands should not change things if nothing needs doing.
epel-disable.yaml:33 Task/Handler: Disable repos of 'epel' if package 'epel-release' is installed

command-instead-of-module: rpm used in place of yum or rpm_key module
epel-disable.yaml:38 Task/Handler: Detect package 'epel-next-release' is installed

fqcn[action-core]: Use FQCN for builtin module actions (command).
epel-disable.yaml:38 Use `ansible.builtin.command` or `ansible.legacy.command` instead.

no-changed-when: Commands should not change things if nothing needs doing.
epel-disable.yaml:38 Task/Handler: Detect package 'epel-next-release' is installed

yaml[truthy]: Truthy value should be one of [false, true]
epel-disable.yaml:41

command-instead-of-shell: Use shell only when shell functionality is required.
epel-disable.yaml:43 Task/Handler: Disable repos of 'epel-next'

fqcn[action-core]: Use FQCN for builtin module actions (shell).
epel-disable.yaml:43 Use `ansible.builtin.shell` or `ansible.legacy.shell` instead.

no-changed-when: Commands should not change things if nothing needs doing.
epel-disable.yaml:43 Task/Handler: Disable repos of 'epel-next'

Read documentation for instructions on how to ignore specific rule violations.

                        Rule Violation Summary
 count tag                       profile    rule associated tags
     3 command-instead-of-module basic      command-shell, idiom
     4 command-instead-of-shell  basic      command-shell, idiom
     2 jinja[spacing]            basic      formatting (warning)
     2 name[missing]             basic      idiom
     1 name[play]                basic      idiom
     3 yaml[truthy]              basic      formatting, yaml
     7 no-changed-when           shared     command-shell, idempotency
     7 fqcn[action-core]         production formatting

Failed after min profile: 27 failure(s), 2 warning(s) on 1 files.
```
