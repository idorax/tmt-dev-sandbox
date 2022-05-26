
```python
(tmt) huanli@ThinkPadTV:foo$ tmt clean
clean
    guests
> /home/huanli/.virtualenvs/tmt/lib/python3.9/site-packages/tmt/base.py(594)__init__()
-> self.my_run = run
(Pdb) w
  /home/huanli/.virtualenvs/tmt/bin/tmt(8)<module>()
...<snip>...
  /home/huanli/.virtualenvs/tmt/lib/python3.9/site-packages/tmt/cli.py(1063)clean()
-> if not clean_obj.guests():
  /home/huanli/.virtualenvs/tmt/lib/python3.9/site-packages/tmt/base.py(1959)guests()
-> if not self._stop_running_guests(run):
  /home/huanli/.virtualenvs/tmt/lib/python3.9/site-packages/tmt/base.py(1914)_stop_running_guests()
-> loaded, error = tmt.utils.load_run(run)
  /home/huanli/.virtualenvs/tmt/lib/python3.9/site-packages/tmt/utils.py(1470)load_run()
-> run.load_from_workdir()
  /home/huanli/.virtualenvs/tmt/lib/python3.9/site-packages/tmt/base.py(1568)load_from_workdir()
-> plans.append(Plan(node, run=self))
> /home/huanli/.virtualenvs/tmt/lib/python3.9/site-packages/tmt/base.py(594)__init__()
-> self.my_run = run
(Pdb) (Pdb) ll
588  	    def __init__(self, node, run=None):
589  	        """ Initialize the plan """
590  	        super().__init__(node, parent=run)
591  	
592  	        # Save the run, prepare worktree and plan data directory
593  	        import pdb; pdb.set_trace()
594  ->	        self.my_run = run
595  	        if self.my_run:
596  	            # XXXV: How can we identify it is in 'clean guests' phase?
597  	            self._initialize_worktree()
598  	            self._initialize_data_directory()
...
(Pdb) pp self, run
(<tmt.base.Plan object at 0x7f0b3351df70>,
 <tmt.base.Run object at 0x7f0b3351d8e0>)
(Pdb) 

################################################################################

(Pdb) up
> /home/huanli/.virtualenvs/tmt/lib/python3.9/site-packages/tmt/base.py(1568)load_from_workdir()
-> plans.append(Plan(node, run=self))

(Pdb) ll
1537 	    def load_from_workdir(self):
1538 	        """
1539 	        Load the run from its workdir, do not require the root in
1540 	        run.yaml to exist. Doest not load the fmf tree.
1541 	
1542 	        Use only when the data in workdir is sufficient (e.g. tmt
1543 	        clean and status only require the steps to be loaded and
1544 	        their status).
1545 	        """
1546 	        self._save_tree(self._tree)
1547 	        self._workdir_load(self._workdir_path)
1548 	        try:
1549 	            data = tmt.utils.yaml_to_dict(self.read('run.yaml'))
1550 	        except tmt.utils.FileError:
1551 	            self.debug('Run data not found.')
1552 	            return
1553 	        self._environment_from_workdir = data.get('environment')
1554 	        self._context.obj.steps = set(data['steps'])
1555 	        plans = []
1556 	        # The root directory of the tree may not be available, create
1557 	        # a partial Core object that only contains the necessary
1558 	        # attributes required for plan/step loading.
1559 	        for plan in data.get('plans'):
1560 	            node = type('Core', (), {
1561 	                'name': plan,
1562 	                'data': {},
1563 	                'root': None,
1564 	                # No attributes will ever need to be accessed, just create
1565 	                # a compatible method signature
1566 	                'get': lambda section, item=None: item,
1567 	                })
1568 ->	            plans.append(Plan(node, run=self))
....<snip>....

################################################################################
(Pdb) up
> /home/huanli/.virtualenvs/tmt/lib/python3.9/site-packages/tmt/utils.py(1470)load_run()
-> run.load_from_workdir()
(Pdb) ll
1467 	def load_run(run: 'tmt.base.Run') -> Tuple[bool, Optional[Exception]]:
1468 	    """ Load a run and its steps from the workdir """
1469 	    try:
1470 ->	        run.load_from_workdir()
1471 	    except GeneralError as error:
....<snip>....

################################################################################
(Pdb) up
> /home/huanli/.virtualenvs/tmt/lib/python3.9/site-packages/tmt/base.py(1914)_stop_running_guests()
-> loaded, error = tmt.utils.load_run(run)
(Pdb) ll
1912 	    def _stop_running_guests(self, run):
1913 	        """ Stop all running guests of a run """
1914 ->	        loaded, error = tmt.utils.load_run(run)
1915 	        if not loaded:
1916 	            self.warn(f"Failed to load run '{run.workdir}': {error}")
1917 	            return False

################################################################################
(Pdb) up
> /home/huanli/.virtualenvs/tmt/lib/python3.9/site-packages/tmt/base.py(1959)guests()
-> if not self._stop_running_guests(run):
(Pdb) ll
1947 	    def guests(self):
1948 	        """ Clean guests of runs """
1949 	        self.info('guests', color='blue')
1950 	        path = self.opt('path')
1951 	        id_ = self.opt('id_')
1952 	        if self.opt('last'):
1953 	            # Pass the context containing --last to Run to choose
1954 	            # the correct one.
1955 	            return self._stop_running_guests(Run(context=self._context))
1956 	        successful = True
1957 	        for abs_path in tmt.utils.generate_runs(path, id_):
1958 	            run = Run(abs_path, self._context.obj.tree, self._context)
1959 ->	            if not self._stop_running_guests(run):
1960 	                successful = False
1961 	        return successful

################################################################################
(Pdb) up
> /home/huanli/.virtualenvs/tmt/lib/python3.9/site-packages/tmt/cli.py(1063)clean()
-> if not clean_obj.guests():
(Pdb) ll
1039 	@main.group(chain=True, invoke_without_command=True, cls=CustomGroup)
1040 	@click.pass_context
1041 	@verbose_debug_quiet
1042 	@dry
1043 	def clean(context, **kwargs):
1044 	    """
1045 	    Clean workdirs, guests or images.
1046 	
1047 	    Without any command, clean everything, stop the guests, remove
1048 	    all runs and then remove all images. Search for runs in
1049 	    /var/tmp/tmt, if runs are stored elsewhere, the path to them can
1050 	    be set using a subcommand (either runs or guests subcommand).
1051 	    """
1052 	    clean_obj = tmt.Clean(parent=context.obj, context=context)
1053 	    context.obj.clean = clean_obj
1054 	    exit_code = 0
1055 	    if context.invoked_subcommand is None:
1056 	        echo(style('clean', fg='red'))
1057 	        # Set path to default
1058 	        context.params['path'] = tmt.utils.WORKDIR_ROOT
1059 	        # Create another level to the hierarchy so that logging indent is
1060 	        # consistent between the command and subcommands
1061 	        clean_obj = tmt.Clean(parent=clean_obj, context=context)
1062 	        if os.path.exists(tmt.utils.WORKDIR_ROOT):
1063 ->	            if not clean_obj.guests():
1064 	                exit_code = 1
1065 	            if not clean_obj.runs():
1066 	                exit_code = 1

```
