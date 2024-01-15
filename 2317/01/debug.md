```python
(tmt) huanli@kvm-01-guest09:unit$ python3 -m pytest -vvv -ra --showlocals
============================================================== test session starts ===============================================================
platform linux -- Python 3.11.7, pytest-7.4.4, pluggy-1.3.0 -- /home/huanli/.virtualenvs/tmt/bin/python3
cachedir: .pytest_cache
rootdir: /home/huanli/dev/2317/dev
configfile: pyproject.toml
collected 704 items

test_adjust.py::test_empty PASSED                                                                                                          [  0%]
test_adjust.py::test_comments PASSED                                                                                                       [  0%]
test_adjust.py::test_disable PASSED                                                                                                        [  0%]
test_adjust.py::test_environment PASSED                                                                                                    [  0%]
test_adjust.py::test_continue PASSED                                                                                                       [  0%]
test_adjust.py::test_condition PASSED                                                                                                      [  0%]
test_adjust.py::test_operators_basic PASSED                                                                                                [  0%]
test_adjust.py::test_operators_distro_name PASSED                                                                                          [  1%]
test_adjust.py::test_operators_distro_major PASSED                                                                                         [  1%]
test_adjust.py::test_operators_distro_minor PASSED                                                                                         [  1%]
test_adjust.py::test_operators_product PASSED                                                                                              [  1%]
test_adjust.py::test_operators_special PASSED                                                                                              [  1%]
test_adjust.py::test_not_equal_comma_separated PASSED                                                                                      [  1%]
test_adjust.py::test_invalid_rule PASSED                                                                                                   [  1%]
test_adjust.py::test_invalid_decision PASSED                                                                                               [  2%]
test_adjust.py::test_invalid_expression PASSED                                                                                             [  2%]
test_adjust.py::test_invalid_operator PASSED                                                                                               [  2%]
test_base.py::test_invalid_yaml_syntax PASSED                                                                                              [  2%]
test_base.py::test_test_defaults PASSED                                                                                                    [  2%]
test_base.py::test_test_invalid PASSED                                                                                                     [  2%]
test_base.py::test_link PASSED                                                                                                             [  2%]
test_base.py::test_pickleable_tree PASSED                                                                                                  [  3%]
test_beakerlib.py::test_basic PASSED                                                                                                       [  3%]
test_beakerlib.py::test_require_from_fmf[https:/github.com/beakerlib/httpd-/http-master] PASSED                                            [  3%]
test_beakerlib.py::test_require_from_fmf[https:/github.com/beakerlib/example-/file-main] PASSED                                            [  3%]
test_beakerlib.py::test_invalid_url_conflict PASSED                                                                                        [  3%]
test_beakerlib.py::test_dependencies PASSED                                                                                                [  3%]
test_beakerlib.py::test_mark_nonexistent_url
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> PDB set_trace (IO-capturing turned off) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
> /home/huanli/dev/2317/dev/tmt/utils.py(4894)git_clone()
-> def get_env(env: str, default_value: Optional[int]) -> Optional[int]:
(Pdb) l
4889 	    """
4890
4891 	    if url.find('THISDOESNTEXIST') != -1 or str(destination).find('THISDOESNTEXIST') != -1:
4892 	        breakpoint()
4893
4894 ->	    def get_env(env: str, default_value: Optional[int]) -> Optional[int]:
4895 	        """ Get the value of an environment variable and convert it to be integer """
4896 	        value = os.getenv(env, None)
4897 	        if value is None:
4898 	            return default_value
4899 	        try:
(Pdb) ll
4867 	def git_clone(
4868 	        url: str,
4869 	        destination: Path,
4870 	        common: Common,
4871 	        logger: tmt.log.Logger,
4872 	        env: Optional[EnvironmentType] = None,
4873 	        shallow: bool = False,
4874 	        can_change: bool = True,
4875 	        timeout: Optional[int] = None,
4876 	        attempts: Optional[int] = None,
4877 	        interval: Optional[int] = None
4878 	        ) -> CommandOutput:
4879 	    """
4880 	    Git clone url to destination, retry without shallow if necessary
4881
4882 	    For shallow=True attempt to clone repository using --depth=1 option first.
4883 	    If not successful attempt to clone whole repo.
4884
4885 	    Common instance is used to run the command for appropriate logging.
4886 	    Environment is updated by 'env' dictionary.
4887
4888 	    Url can be modified with hardcode rules unless can_change=False is set.
4889 	    """
4890
4891 	    if url.find('THISDOESNTEXIST') != -1 or str(destination).find('THISDOESNTEXIST') != -1:
4892 	        breakpoint()
4893
4894 ->	    def get_env(env: str, default_value: Optional[int]) -> Optional[int]:
4895 	        """ Get the value of an environment variable and convert it to be integer """
4896 	        value = os.getenv(env, None)
4897 	        if value is None:
4898 	            return default_value
4899 	        try:
4900 	            return int(value)
4901 	        except ValueError:
4902 	            return default_value
4903
4904 	    timeout = timeout or get_env('TMT_GIT_CLONE_TIMEOUT', None)
4905 	    attempts = attempts or cast(int, get_env('TMT_GIT_CLONE_ATTEMPTS', DEFAULT_GIT_CLONE_ATTEMPTS))
4906 	    interval = interval or cast(int, get_env('TMT_GIT_CLONE_INTERVAL', DEFAULT_GIT_CLONE_INTERVAL))
4907
4908 	    # Update url only once
4909 	    if can_change:
4910 	        url = clonable_git_url(url)
4911
4912 	    # Do an extra shallow clone first
4913 	    if shallow:
4914 	        try:
4915 	            return _git_clone(
4916 	                shallow=True,
4917 	                url=url,
4918 	                destination=destination,
4919 	                common=common,
4920 	                env=env,
4921 	                timeout=timeout
4922 	                )
4923 	        except RunError:
4924 	            # Do nothing
4925 	            pass
4926
4927 	    # Finish with whatever number attempts requested (deep)
4928 	    try:
4929 	        return retry(
4930 	            func=_git_clone,
4931 	            attempts=attempts,
4932 	            interval=interval,
4933 	            label=f"git clone {url} {destination}",
4934 	            logger=logger,
4935 	            shallow=False,
4936 	            url=url,
4937 	            destination=destination,
4938 	            common=common,
4939 	            env=env,
4940 	            timeout=timeout
4941 	            )
4942 	    except RetryError as error:
4943 	        raise GeneralError(f"Failed to clone {url} to {destination}: {error}")
(Pdb) b retry
Breakpoint 1 at /home/huanli/dev/2317/dev/tmt/utils.py:6343
(Pdb) c

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> PDB continue (IO-capturing resumed) >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
> /home/huanli/dev/2317/dev/tmt/utils.py(6361)retry()
-> exceptions: list[Exception] = []
(Pdb) args
func = <function _git_clone at 0x7f1981c80c20>
attempts = 3
interval = 10
label = 'git clone https://github.com/beakerlib/THISDOESNTEXIST /var/tmp/tmt/run-018/tmpzqejemul/github.com/THISDOESNTEXIST'
logger = <Logger: name=tmt verbosity=0 debug=0 quiet=False topics=set() apply_colors_output=True apply_colors_logging=True>
args = ()
kwargs = {'shallow': False, 'url': 'https://github.com/beakerlib/THISDOESNTEXIST', 'destination': Path('/var/tmp/tmt/run-018/tmpzqejemul/github.com/THISDOESNTEXIST'), 'common': <tmt.utils.Common object at 0x7f1980488710>, 'env': {'GIT_ASKPASS': 'echo'}, 'timeout': None}
(Pdb) n
> /home/huanli/dev/2317/dev/tmt/utils.py(6362)retry()
-> for i in range(attempts):
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6363)retry()
-> try:
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6364)retry()
-> return func(*args, **kwargs)
(Pdb)
tmt.utils.RunError: Command 'git clone https://github.com/beakerlib/THISDOESNTEXIST /var/tmp/tmt/run-018/tmpzqejemul/github.com/THISDOESNTEXIST' returned 128.
> /home/huanli/dev/2317/dev/tmt/utils.py(6364)retry()
-> return func(*args, **kwargs)
(Pdb) n
> /home/huanli/dev/2317/dev/tmt/utils.py(6365)retry()
-> except Exception as exc:
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6366)retry()
-> exceptions.append(exc)
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6367)retry()
-> logger.debug(
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6368)retry()
-> 'retry',
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6369)retry()
-> f"{label} failed, {attempts - i} retries left, "
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6370)retry()
-> f"trying again in {interval:.2f} seconds.")
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6369)retry()
-> f"{label} failed, {attempts - i} retries left, "
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6367)retry()
-> logger.debug(
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6371)retry()
-> logger.fail(str(exc))
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6372)retry()
-> time.sleep(interval)
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6362)retry()
-> for i in range(attempts):
(Pdb) p attempts
3
(Pdb) n
> /home/huanli/dev/2317/dev/tmt/utils.py(6363)retry()
-> try:
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6364)retry()
-> return func(*args, **kwargs)
(Pdb)
tmt.utils.RunError: Command 'git clone https://github.com/beakerlib/THISDOESNTEXIST /var/tmp/tmt/run-018/tmpzqejemul/github.com/THISDOESNTEXIST' returned 128.
> /home/huanli/dev/2317/dev/tmt/utils.py(6364)retry()
-> return func(*args, **kwargs)
(Pdb) n
> /home/huanli/dev/2317/dev/tmt/utils.py(6365)retry()
-> except Exception as exc:
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6366)retry()
-> exceptions.append(exc)
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6367)retry()
-> logger.debug(
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6368)retry()
-> 'retry',
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6369)retry()
-> f"{label} failed, {attempts - i} retries left, "
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6370)retry()
-> f"trying again in {interval:.2f} seconds.")
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6369)retry()
-> f"{label} failed, {attempts - i} retries left, "
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6367)retry()
-> logger.debug(
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6371)retry()
-> logger.fail(str(exc))
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6372)retry()
-> time.sleep(interval)
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6362)retry()
-> for i in range(attempts):
(Pdb) n
> /home/huanli/dev/2317/dev/tmt/utils.py(6363)retry()
-> try:
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6364)retry()
-> return func(*args, **kwargs)
(Pdb)

tmt.utils.RunError: Command 'git clone https://github.com/beakerlib/THISDOESNTEXIST /var/tmp/tmt/run-018/tmpzqejemul/github.com/THISDOESNTEXIST' returned 128.
> /home/huanli/dev/2317/dev/tmt/utils.py(6364)retry()
-> return func(*args, **kwargs)
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6365)retry()
-> except Exception as exc:
(Pdb) n
> /home/huanli/dev/2317/dev/tmt/utils.py(6366)retry()
-> exceptions.append(exc)
(Pdb) p exc
RunError("Command 'git clone https://github.com/beakerlib/THISDOESNTEXIST /var/tmp/tmt/run-018/tmpzqejemul/github.com/THISDOESNTEXIST' returned 128.")
(Pdb) n
> /home/huanli/dev/2317/dev/tmt/utils.py(6367)retry()
-> logger.debug(
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6368)retry()
-> 'retry',
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6369)retry()
-> f"{label} failed, {attempts - i} retries left, "
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6370)retry()
-> f"trying again in {interval:.2f} seconds.")
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6369)retry()
-> f"{label} failed, {attempts - i} retries left, "
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6367)retry()
-> logger.debug(
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6371)retry()
-> logger.fail(str(exc))
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6372)retry()
-> time.sleep(interval)
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(6362)retry()
-> for i in range(attempts):
(Pdb) p i
2
(Pdb) n
> /home/huanli/dev/2317/dev/tmt/utils.py(6373)retry()
-> raise RetryError(label, causes=exceptions)
(Pdb)
tmt.utils.RetryError: Retries of git clone https://github.com/beakerlib/THISDOESNTEXIST /var/tmp/tmt/run-018/tmpzqejemul/github.com/THISDOESNTEXIST unsuccessful.
> /home/huanli/dev/2317/dev/tmt/utils.py(6373)retry()
-> raise RetryError(label, causes=exceptions)
(Pdb)
--Return--
> /home/huanli/dev/2317/dev/tmt/utils.py(6373)retry()->None
-> raise RetryError(label, causes=exceptions)
(Pdb)
tmt.utils.RetryError: Retries of git clone https://github.com/beakerlib/THISDOESNTEXIST /var/tmp/tmt/run-018/tmpzqejemul/github.com/THISDOESNTEXIST unsuccessful.
> /home/huanli/dev/2317/dev/tmt/utils.py(4929)git_clone()
-> return retry(
(Pdb) n
> /home/huanli/dev/2317/dev/tmt/utils.py(4942)git_clone()
-> except RetryError as error:
(Pdb)
> /home/huanli/dev/2317/dev/tmt/utils.py(4943)git_clone()
-> raise GeneralError(f"Failed to clone {url} to {destination}: {error}")
(Pdb) p error
RetryError('Retries of git clone https://github.com/beakerlib/THISDOESNTEXIST /var/tmp/tmt/run-018/tmpzqejemul/github.com/THISDOESNTEXIST unsuccessful.')
(Pdb) n
tmt.utils.GeneralError: Failed to clone https://github.com/beakerlib/THISDOESNTEXIST to /var/tmp/tmt/run-018/tmpzqejemul/github.com/THISDOESNTEXIST: Retries of git clone https://github.com/beakerlib/THISDOESNTEXIST /var/tmp/tmt/run-018/tmpzqejemul/github.com/THISDOESNTEXIST unsuccessful.
> /home/huanli/dev/2317/dev/tmt/utils.py(4943)git_clone()
-> raise GeneralError(f"Failed to clone {url} to {destination}: {error}")
(Pdb)
--Return--
> /home/huanli/dev/2317/dev/tmt/utils.py(4943)git_clone()->None
-> raise GeneralError(f"Failed to clone {url} to {destination}: {error}")
(Pdb)
tmt.utils.GeneralError: Failed to clone https://github.com/beakerlib/THISDOESNTEXIST to /var/tmp/tmt/run-018/tmpzqejemul/github.com/THISDOESNTEXIST: Retries of git clone https://github.com/beakerlib/THISDOESNTEXIST /var/tmp/tmt/run-018/tmpzqejemul/github.com/THISDOESNTEXIST unsuccessful.
> /home/huanli/dev/2317/dev/tmt/libraries/beakerlib.py(259)fetch()

```
