```patch
diff --git a/tmt/utils.py b/tmt/utils.py
index e5fed85a..1c2fe2ab 100644
--- a/tmt/utils.py
+++ b/tmt/utils.py
@@ -195,6 +195,10 @@ ENVFILE_RETRY_SESSION_BACKOFF_FACTOR: float = 1
 DEFAULT_WAIT_TICK: float = 30.0
 DEFAULT_WAIT_TICK_INCREASE: float = 1.0

+# Defaults for GIT attempts and interval
+DEFAULT_GIT_CLONE_ATTEMPTS: int = 3
+DEFAULT_GIT_CLONE_INTERVAL: int = 10
+
 # A stand-in variable for generic use.
 T = TypeVar('T')

@@ -4846,13 +4850,31 @@ def distgit_download(
                 logger=logger)


+def _git_clone(
+        url: str,
+        destination: Path,
+        common: Common,
+        env: Optional[EnvironmentType] = None,
+        timeout: Optional[int] = None,
+        shallow: bool = False
+        ) -> CommandOutput:
+    """ Git clone url to destination """
+
+    depth = ['--depth=1'] if shallow else []
+    return common.run(Command('git', 'clone', *depth, url, destination), env=env, timeout=timeout)
+
+
 def git_clone(
         url: str,
         destination: Path,
         common: Common,
+        logger: tmt.log.Logger,
         env: Optional[EnvironmentType] = None,
         shallow: bool = False,
         can_change: bool = True,
+        timeout: Optional[int] = None,
+        attempts: Optional[int] = None,
+        interval: Optional[int] = None
         ) -> CommandOutput:
     """
     Git clone url to destination, retry without shallow if necessary
@@ -4865,23 +4887,57 @@ def git_clone(

     Url can be modified with hardcode rules unless can_change=False is set.
     """
-    depth = ['--depth=1'] if shallow else []

+    def get_env(env: str, default_value: Optional[int]) -> Optional[int]:
+        """ Get the value of an environment variable and convert it to be integer """
+        value = os.getenv(env, None)
+        if value is None:
+            return default_value
+        try:
+            return int(value)
+        except ValueError:
+            return default_value
+
+    timeout = timeout or get_env('TMT_GIT_CLONE_TIMEOUT', None)
+    attempts = attempts or cast(int, get_env('TMT_GIT_CLONE_ATTEMPTS', DEFAULT_GIT_CLONE_ATTEMPTS))
+    interval = interval or cast(int, get_env('TMT_GIT_CLONE_INTERVAL', DEFAULT_GIT_CLONE_INTERVAL))
+
+    # Update url only once
     if can_change:
         url = clonable_git_url(url)
+
+    # Do an extra shallow clone first
+    if shallow:
+        try:
+            return _git_clone(
+                shallow=True,
+                url=url,
+                destination=destination,
+                common=common,
+                env=env,
+                timeout=timeout
+                )
+        except RunError:
+            # Do nothing
+            pass
+
+    # Finish with whatever number attempts requested (deep)
     try:
-        return common.run(
-            Command(
-                'git', 'clone',
-                *depth,
-                url, destination
-                ), env=env)
-    except RunError:
-        if not shallow:
-            # Do not retry if shallow was not used
-            raise
-        # Git server might not support shallow cloning, try again (do not modify url)
-        return git_clone(url, destination, common, env, shallow=False, can_change=False)
+        return retry(
+            func=_git_clone,
+            attempts=attempts,
+            interval=interval,
+            label=f"git clone {url} {destination}",
+            logger=logger,
+            shallow=False,
+            url=url,
+            destination=destination,
+            common=common,
+            env=env,
+            timeout=timeout
+            )
+    except RetryError as error:
+        raise GeneralError(f"Failed to clone {url} to {destination}: {error}")


 # ignore[type-arg]: base class is a generic class, but we cannot list its parameter type, because
```
