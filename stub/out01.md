```bash
# https://gitlab.com/testing-farm/infrastructure/-/blob/main/.pre-commit-config-maintainer.yaml?ref_type=heads#L25

(tmt) huanli@kvm-01-guest06:dev$ git diff
diff --git a/.pre-commit-config.yaml b/.pre-commit-config.yaml
index e959db78..340a4996 100644
--- a/.pre-commit-config.yaml
+++ b/.pre-commit-config.yaml
@@ -110,3 +110,12 @@ repos:
     - id: tmt-lint
       additional_dependencies:
         - "pint<0.20"
+
+  - repo: https://github.com/ansible-community/ansible-lint.git
+    rev: v5.3.2
+    hooks:
+      - id: ansible-lint
+        files: \.(yaml|yml)$
+        # New Ansible breaks older ansible-lint, stick to the old version for now
+        additional_dependencies:
+          - 'ansible-core<2.15'
(tmt) huanli@kvm-01-guest06:dev$
(tmt) huanli@kvm-01-guest06:dev$ git commit -s -a -m "Add ansible-lint"
autopep8.............................................(no files to check)Skipped
fix end of files.........................................................Passed
mixed line ending........................................................Passed
trim trailing whitespace.................................................Passed
check toml...........................................(no files to check)Skipped
mypy.................................................(no files to check)Skipped
pyright..............................................(no files to check)Skipped
Check JSON schemas validity..........................(no files to check)Skipped
yamllint.............................................(no files to check)Skipped
ruff.................................................(no files to check)Skipped
tmt lint.............................................(no files to check)Skipped
Ansible-lint.............................................................Failed
- hook id: ansible-lint
- exit code: 2

WARNING  Listing 11 violation(s) that are fatal
no-changed-when: Commands should not change things if nothing needs doing
examples/redis/ansible/tasks/redis_variables.yml:1 Task/Handler: Set variables into redis database

risky-file-permissions: File permissions unset or incorrect
tests/finish/ansible/data/playbook.yml:6 Task/Handler: Create a simple test file

no-changed-when: Commands should not change things if nothing needs doing
tests/finish/ansible/data/playbook.yml:11 Task/Handler: Make sure a simple environment variable is respected

no-changed-when: Commands should not change things if nothing needs doing
tests/finish/ansible/data/playbook.yml:15 Task/Handler: Make sure variables with spaces are correctly handed over

risky-file-permissions: File permissions unset or incorrect
tests/prepare/ansible/data/playbook.yml:6 Task/Handler: Create a simple test file

no-changed-when: Commands should not change things if nothing needs doing
tests/prepare/ansible/data/playbook.yml:11 Task/Handler: Make sure a simple environment variable is respected

no-changed-when: Commands should not change things if nothing needs doing
tests/prepare/ansible/data/playbook.yml:15 Task/Handler: Make sure variables with spaces are correctly handed over

risky-file-permissions: File permissions unset or incorrect
tests/run/worktree/data/ansible/playbook.yml:3 Task/Handler: copy src=testfile dest=/tmp/testfile

unnamed-task: All tasks should be named
tests/run/worktree/data/ansible/playbook.yml:3 Task/Handler: copy src=testfile dest=/tmp/testfile

no-changed-when: Commands should not change things if nothing needs doing
tests/run/worktree/data/ansible/playbook.yml:6 Task/Handler: command  grep PASS /tmp/testfile

unnamed-task: All tasks should be named
tests/run/worktree/data/ansible/playbook.yml:6 Task/Handler: command  grep PASS /tmp/testfile

You can skip specific rules or tags by adding them to your configuration file:
# .ansible-lint
warn_list:  # or 'skip_list' to silence them completely
  - experimental  # all rules tagged as experimental
  - no-changed-when  # Commands should not change things if nothing needs doing
  - unnamed-task  # All tasks should be named

Finished with 8 failure(s), 3 warning(s) on 1250 files.

(tmt) huanli@kvm-01-guest06:dev$
```
