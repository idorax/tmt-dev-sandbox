# https://github.com/teemtee/tmt/pull/1891

## 1 - The output of debugging

```python

(tmt) huanli@kvm-01-guest09:TREE$ pwd
/home/huanli/dev/1861/foo/REPRO/TREE
(tmt) huanli@kvm-01-guest09:TREE$ cat .git
gitdir: /home/huanli/dev/1861/foo/REPRO/.git/worktrees/TREE
(tmt) huanli@kvm-01-guest09:TREE$ python3 -m pdb ~/.virtualenvs/tmt/bin/tmt plans show -vvv
> /home/huanli/.virtualenvs/tmt/bin/tmt(3)<module>()
-> import functools
(Pdb) b tmt/utils.py:2664
Breakpoint 1 at /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/utils.py:2664
(Pdb) c
/plans/features/advanced
                 summary Advanced tests using virtualization
             description Tests covering more advanced scenarios, quite
                         often using a container or a virtual machine to
                         verify that package installation works as
                         expected. These can take some time.
                discover
                     how fmf
                    link
                  filter tier: 3
           dist-git-init false
           modified-only false
dist-git-remove-fmf-root false
         dist-git-source false
          dist-git-merge false
                   where
                 exclude
                    test
                  fmf-id false
               provision
                     how local
                 prepare
                     how shell
                  script
                   where
                 execute
                     how tmt
                duration 1h
              exit-first false
                  script
             interactive false
                   where
                  report
                     how display
           display-guest auto
                  finish
                     how shell
                  script
                   where
                 enabled true
                 sources /home/huanli/dev/1861/foo/REPRO/TREE/plans/main.fmf
                         /home/huanli/dev/1861/foo/REPRO/TREE/plans/features/advanced.fmf
> /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/utils.py(2664)default_branch()
-> command1 = Command("git", "rev-parse", "--path-format=absolute", "--git-common-dir")
(Pdb) ll
2637 	def default_branch(repository: Path, logger: tmt.log.Logger,
2638 	                   remote: str = 'origin') -> Optional[str]:
2639 	    """ Detect default branch from given local git repository """
2640 	    # Make sure '.git' (which is a file or a directory) is present
2641 	    dot_git = repository / '.git'
2642 	    if not dot_git.exists():
2643 	        return None
2644
2645 	    if not dot_git.is_file() and not dot_git.is_dir():
2646 	        return None
2647
2648 	    if dot_git.is_dir():
2649 	        # Make sure the '.git/refs/remotes/{remote}' directory is present
2650 	        git_remotes_dir = repository / f'.git/refs/remotes/{remote}'
2651 	        if not git_remotes_dir.exists():
2652 	            return None
2653
2654 	        head = repository / f'.git/refs/remotes/{remote}/HEAD'
2655 	        # Make sure the HEAD reference is available
2656 	        if not head.exists():
2657 	            subprocess.run(
2658 	                f'git remote set-head {remote} --auto'.split(), cwd=repository)
2659 	        # The ref format is 'ref: refs/remotes/origin/main'
2660 	        with open(head) as ref:
2661 	            return ref.read().strip().split('/')[-1]
2662
2663 	    # Get the default branch if '.git' is a file
2664B->	    command1 = Command("git", "rev-parse", "--path-format=absolute", "--git-common-dir")
2665 	    result = run_command(command=command1, cwd=Path(repository), logger=logger)
2666 	    if result.stdout is None:
2667 	        return None
2668 	    git_parent_path = result.stdout.strip()
2669 	    command2 = Command("git", "rev-parse", "--abbrev-ref", "HEAD")
2670 	    result = run_command(command=command2, cwd=Path(git_parent_path), logger=logger)
2671 	    if result.stdout is None:
2672 	        return None
2673 	    return result.stdout.strip()
(Pdb) args
repository = Path('/home/huanli/dev/1861/foo/REPRO/TREE')
logger = <Logger: name=tmt.logger0 verbosity=3 debug=0 quiet=False>
remote = 'origin'
(Pdb) n
> /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/utils.py(2665)default_branch()
-> result = run_command(command=command1, cwd=Path(repository), logger=logger)
(Pdb)
> /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/utils.py(2666)default_branch()
-> if result.stdout is None:
(Pdb) p result.stdout
'/home/huanli/dev/1861/foo/REPRO/.git\n'
(Pdb) n
> /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/utils.py(2668)default_branch()
-> git_parent_path = result.stdout.strip()
(Pdb)
> /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/utils.py(2669)default_branch()
-> command2 = Command("git", "rev-parse", "--abbrev-ref", "HEAD")
(Pdb) p git_parent_path
'/home/huanli/dev/1861/foo/REPRO/.git'
(Pdb) n
> /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/utils.py(2670)default_branch()
-> result = run_command(command=command2, cwd=Path(git_parent_path), logger=logger)
(Pdb) n
> /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/utils.py(2671)default_branch()
-> if result.stdout is None:
(Pdb) p result.stdout
'main\n'
(Pdb) n
> /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/utils.py(2673)default_branch()
-> return result.stdout.strip()
(Pdb)
--Return--
> /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/utils.py(2673)default_branch()->'main'
-> return result.stdout.strip()
(Pdb)
> /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/utils.py(2497)fmf_id()
-> if def_branch is None:
(Pdb) l
2492 	    if git_root.resolve() != fmf_root.resolve():
2493 	        fmf_id.path = Path('/') / fmf_root.relative_to(git_root)
2494
2495 	    # Get the ref (skip for the default)
2496 	    def_branch = default_branch(git_root, logger)
2497 ->	    if def_branch is None:
2498 	        fmf_id.ref = None
2499 	    else:
2500 	        ref = run(Command("git", "rev-parse", "--abbrev-ref", "HEAD"))
2501 	        if ref != def_branch or always_get_ref:
2502 	            fmf_id.ref = ref
(Pdb) p def_branch
'main'
(Pdb) n
> /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/utils.py(2500)fmf_id()
-> ref = run(Command("git", "rev-parse", "--abbrev-ref", "HEAD"))
(Pdb)
> /home/huanli/.virtualenvs/tmt/lib/python3.10/site-packages/tmt/utils.py(2501)fmf_id()
-> if ref != def_branch or always_get_ref:
(Pdb) p ref
'quay'
(Pdb) q
```

## 2 - The patch

```patch

commit cec873c5f02a66535dd1f5d126f34287357c6a4d (HEAD -> dev-huanli-1861-20230306-git-worktree)
Author: Vector Li <huanli@redhat.com>
Date:   Mon Apr 10 18:33:33 2023 +0800

    Get the default branch after talking to openAI

    Signed-off-by: Vector Li <huanli@redhat.com>

diff --git a/tmt/utils.py b/tmt/utils.py
index 9e7dc3d..674b05b 100644
--- a/tmt/utils.py
+++ b/tmt/utils.py
@@ -2661,13 +2661,16 @@ def default_branch(repository: Path, logger: tmt.log.Logger,
             return ref.read().strip().split('/')[-1]

     # Get the default branch if '.git' is a file
-    worktree_path = dot_git.read_text().strip().split()[-1]
-    if '/.git/' not in worktree_path:
+    command1 = Command("git", "rev-parse", "--path-format=absolute", "--git-common-dir")
+    result = run_command(command=command1, cwd=Path(repository), logger=logger)
+    if result.stdout is None:
         return None
-    git_parent_path = re.sub(r'/?\.git/.*', '', worktree_path)
-    command = Command("git", "rev-parse", "--path-format=absolute", "--git-common-dir")
-    result = run_command(command=command, cwd=Path(git_parent_path), logger=logger)
-    return result.stdout.strip() if result.stdout is not None else None
+    git_parent_path = result.stdout.strip()
+    command2 = Command("git", "rev-parse", "--abbrev-ref", "HEAD")
+    result = run_command(command=command2, cwd=Path(git_parent_path), logger=logger)
+    if result.stdout is None:
+        return None
+    return result.stdout.strip()


 def parse_dotenv(content: str) -> EnvironmentType:
```
