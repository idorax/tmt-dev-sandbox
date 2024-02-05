#!/bin/bash

FILE=$(readlink -f $BASH_SOURCE)
NAME=$(basename $FILE)
CDIR=$(dirname $FILE)
TMPDIR=${TMPDIR:-"/tmp"}

function cleanup
{
	typeset -i ret=$?
	rm -rf $TMPDIR/$NAME.*.$$
	exit $ret
}

yaml_files=$TMPDIR/$NAME.yaml.$$

cat > $yaml_files << EOF
tmt/.github/workflows/pre-commit.yml
tmt/.github/workflows/release.yml
tmt/.github/workflows/shellcheck.yml
tmt/.packit.yaml
tmt/.pre-commit-config.yaml
tmt/.pre-commit-hooks.yaml
tmt/.readthedocs.yaml
tmt/.travis.yml
tmt/ansible/packages.yml
tmt/docs/toolbelt-catalog.yaml
tmt/examples/ansible/test.yml
tmt/examples/redis/ansible/setup_server.yml
tmt/examples/redis/ansible/tasks/redis.yml
tmt/examples/redis/ansible/tasks/redis_variables.yml
tmt/tests/core/adjust/data/context.yaml
tmt/tests/core/env/data/empty.yaml
tmt/tests/core/env/data/vars.yaml
tmt/tests/core/environment-file/data/empty.yaml
tmt/tests/core/environment-file/data/env.yaml
tmt/tests/execute/result/custom/results.yaml
tmt/tests/execute/result/custom/wrong_results.yaml
tmt/tests/finish/ansible/data/playbook.yml
tmt/tests/integration/test_data/test_nitrate/NitrateExport.test_coverage_bugzilla.yaml
tmt/tests/integration/test_data/test_nitrate/NitrateExport.test_create.yaml
tmt/tests/integration/test_data/test_nitrate/NitrateExport.test_create_dryrun.yaml
tmt/tests/integration/test_data/test_nitrate/NitrateExport.test_existing.yaml
tmt/tests/integration/test_data/test_nitrate/NitrateExport.test_existing_dryrun.yaml
tmt/tests/integration/test_data/test_nitrate/NitrateExport.test_existing_release_dryrun.yaml
tmt/tests/integration/test_data/test_nitrate/NitrateExport.test_export_blocked_by_validation.yaml
tmt/tests/integration/test_data/test_nitrate/NitrateExport.test_export_forced_validation.yaml
tmt/tests/integration/test_data/test_nitrate/NitrateExport.test_missing_user_dryrun.yaml
tmt/tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_confirmed.yaml
tmt/tests/integration/test_data/test_nitrate/NitrateImport.test_import_manual_proposed.yaml
tmt/tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_basic.yaml
tmt/tests/integration/test_data/test_nitrate/NitrateImportAutomated.test_old_relevancy.yaml
tmt/tests/integration/test_data/test_polarion/PolarionExport.test_coverage_bugzilla.yaml
tmt/tests/integration/test_data/test_polarion/PolarionExport.test_create.yaml
tmt/tests/integration/test_data/test_polarion/PolarionExport.test_existing.yaml
tmt/tests/plan/show/data/variables.yaml
tmt/tests/prepare/ansible/data/playbook.yml
tmt/tests/run/worktree/data/ansible/playbook.yml
tmt/tmt/schemas/common.yaml
tmt/tmt/schemas/core.yaml
tmt/tmt/schemas/discover/fmf.yaml
tmt/tmt/schemas/discover/shell.yaml
tmt/tmt/schemas/execute/tmt.yaml
tmt/tmt/schemas/execute/upgrade.yaml
tmt/tmt/schemas/finish/ansible.yaml
tmt/tmt/schemas/finish/shell.yaml
tmt/tmt/schemas/plan.yaml
tmt/tmt/schemas/prepare/ansible.yaml
tmt/tmt/schemas/prepare/errata.yaml
tmt/tmt/schemas/prepare/feature.yaml
tmt/tmt/schemas/prepare/install.yaml
tmt/tmt/schemas/prepare/shell.yaml
tmt/tmt/schemas/provision/artemis.yaml
tmt/tmt/schemas/provision/beaker.yaml
tmt/tmt/schemas/provision/connect.yaml
tmt/tmt/schemas/provision/container.yaml
tmt/tmt/schemas/provision/hardware.yaml
tmt/tmt/schemas/provision/kickstart.yaml
tmt/tmt/schemas/provision/local.yaml
tmt/tmt/schemas/provision/minute.yaml
tmt/tmt/schemas/provision/virtual.yaml
tmt/tmt/schemas/report/display.yaml
tmt/tmt/schemas/report/html.yaml
tmt/tmt/schemas/report/junit.yaml
tmt/tmt/schemas/report/polarion.yaml
tmt/tmt/schemas/report/reportportal.yaml
tmt/tmt/schemas/results.yaml
tmt/tmt/schemas/story.yaml
tmt/tmt/schemas/test.yaml
tmt/tmt/steps/prepare/feature/epel-disable.yaml
tmt/tmt/steps/prepare/feature/epel-enable.yaml
tmt/tmt/steps/provision/mrack/mrack-provisioning-config.yaml
EOF

prefix='https://github.com/teemtee/tmt/blob/main'
while read line; do
	yaml_file=${line#tmt/}
	echo '* [ ]' "[$yaml_file]($prefix/$yaml_file)"
done < $yaml_files

cleanup 0
