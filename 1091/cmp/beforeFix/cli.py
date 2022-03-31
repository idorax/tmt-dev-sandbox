@tests.command()
@click.pass_context
@name_filter_condition_long
@click.option(
    '--nitrate', is_flag=True,
    help='Export test metadata to Nitrate.')
@click.option(
    '--bugzilla', is_flag=True,
    help="Link Nitrate case to Bugzilla specified in the 'link' attribute "
         "with the relation 'verifies'.")
@click.option(
    '--create', is_flag=True,
    help="Create test cases in nitrate if they don't exist.")
@click.option(
    '--general / --no-general', default=False,
    help="Link Nitrate case to component's General plan. Disabled by default. "
         "Note that this will unlink any previously connected general plans.")
@click.option(
    '--format', 'format_', default='yaml', show_default=True, metavar='FORMAT',
    help='Output format (yaml or dict).')
@click.option(
    '--fmf-id', is_flag=True,
    help='Show fmf identifiers instead of test metadata.')
@click.option(
    '--duplicate / --no-duplicate', default=False, show_default=True,
    help='Allow or prevent creating duplicates in Nitrate by searching for '
         'existing test cases with the same fmf identifier.')
@click.option(
    '-d', '--debug', is_flag=True,
    help='Provide as much debugging details as possible.')
def export(context, format_, nitrate, bugzilla, **kwargs):
    """
    Export test data into the desired format.

    Regular expression can be used to filter tests by name.
    Use '.' to select tests under the current working directory.
    """
    tmt.Test._save_context(context)
    if bugzilla and not nitrate:
        raise tmt.utils.GeneralError(
            "The --bugzilla option is supported only with --nitrate for now.")
    for test in context.obj.tree.tests():
        if nitrate:
            test.export(format_='nitrate')
        else:
            if kwargs.get('fmf_id'):
                echo(test.export(format_=format_, keys='fmf-id'), nl=False)
            else:
                echo(test.export(format_=format_), nl=False)
