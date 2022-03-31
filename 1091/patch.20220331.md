# [PR1112](https://github.com/teemtee/tmt/pull/1112)

```patch
(tmt) huanli@ThinkPadTV:tmt$ git show
commit a7e144186597435250d2e34f610cb75fe6869eb9 (HEAD -> dev.huanli.20220321.1091.export, origin/dev.huanli.20220321.1091.export)
Author: Vector Li <huanli@redhat.com>
Date:   Thu Mar 31 20:10:37 2022 +0800

    Enable tests to export unique keys

    `tmt tests export` prints duplicate keys if multiple tests
    are exported. To fix it, we should create a list for tests
    data before exporting.

    Signed-off-by: Vector Li <huanli@redhat.com>

diff --git a/tmt/base.py b/tmt/base.py
index e87f161..5457b10 100644
--- a/tmt/base.py
+++ b/tmt/base.py
@@ -542,16 +542,18 @@ class Test(Core):
             tmt.export.export_to_nitrate(self)

         # Common node export otherwise
-        elif keys == 'fmf-id':
-            if format_ == 'dict':
+        elif format_ == 'dict' or format_ == "yaml":
+            if keys == 'fmf-id':
                 return self.fmf_id
-            elif format_ == "yaml":
-                return tmt.utils.dict_to_yaml(self.fmf_id, start=True)
             else:
-                raise tmt.utils.GeneralError(
-                    f"Invalid test export format '{format_}'.")
+                data = {}
+                data['name'] = self.name
+                data.update(super().export(format_='dict'))
+                data.pop('adjust', None)
+                return data
         else:
-            return super(Test, self).export(format_, keys)
+            raise tmt.utils.GeneralError(
+                f"Invalid test export format '{format_}'.")


 class Plan(Core):
diff --git a/tmt/cli.py b/tmt/cli.py
index 8f103f1..e8875f5 100644
--- a/tmt/cli.py
+++ b/tmt/cli.py
@@ -569,14 +569,30 @@ def export(context, format_, nitrate, bugzilla, **kwargs):
     if bugzilla and not nitrate:
         raise tmt.utils.GeneralError(
             "The --bugzilla option is supported only with --nitrate for now.")
-    for test in context.obj.tree.tests():
-        if nitrate:
+
+    if nitrate:
+        for test in context.obj.tree.tests():
             test.export(format_='nitrate')
+    elif format_ == 'execute':
+        for test in context.obj.tree.tests():
+            echo(test.export(format_='execute'), nl=False)
+    elif format_ in ['dict', 'yaml']:
+        keys = None
+        if kwargs.get('fmf_id'):
+            keys = 'fmf-id'
+
+        data = list()
+        for test in context.obj.tree.tests():
+            test_info = test.export(format_=format_, keys=keys)
+            data.append(test_info)
+
+        if format_ == 'dict':
+            echo(data, nl=False)
         else:
-            if kwargs.get('fmf_id'):
-                echo(test.export(format_=format_, keys='fmf-id'), nl=False)
-            else:
-                echo(test.export(format_=format_), nl=False)
+            echo(tmt.utils.dict_to_yaml(data), nl=False)
+    else:
+        raise tmt.utils.GeneralError(
+            f"Invalid test export format '{format_}'.")

```
