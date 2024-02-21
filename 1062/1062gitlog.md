# The git log of TMT issue [1062][01]

* The 1st PR of [1062][01]: [2198](https://github.com/teemtee/tmt/pull/2198)

[01]: https://github.com/teemtee/tmt/issues/1062

## Git log during the China Mid-Autumn Festival and National Day `September 29 – October 6, 2023`

```
commit af374b8d5adfdd984f2fee3dbd0d772f827d7867
Author: Vector Li <huanli@redhat.com>
Date:   Thu Oct 5 19:26:17 2023 +0800

    Add tests for FIPS

    Signed-off-by: Vector Li <huanli@redhat.com>

commit a182a755091bf29f8b31fd655263a2f96fd3532c
Author: Vector Li <huanli@redhat.com>
Date:   Tue Oct 3 15:15:37 2023 +0800

    Add tests and update feature.py accordingly

    Signed-off-by: Vector Li <huanli@redhat.com>

commit 53956d9dd1b478160881a033e7bf25e918b8101a
Author: Vector Li <huanli@redhat.com>
Date:   Mon Oct 2 20:24:26 2023 +0800

    Use multiline script to enable/disable EPEL/CRB (2)

    * For CentOS Stream 8, 9 and CentOS 7

    Signed-off-by: Vector Li <huanli@redhat.com>
```

## Full log

```
commit 7371a90ca9a1782b81eac4cf1ca1765db85838e9
Author: Vector Li <huanli@redhat.com>
Date:   Thu Feb 1 22:37:04 2024 +0800

    Update according to comments from Miroslav and Petr
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 081d36866a3ec9c10d39aac0cabb66cc13a50425
Author: Vector Li <huanli@redhat.com>
Date:   Thu Feb 1 21:48:42 2024 +0800

    Withdraw the support for CRB
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 39fd9987b3b77a63d433ad7a1734dfd0f44a353d
Author: Vector Li <huanli@redhat.com>
Date:   Thu Feb 1 15:52:19 2024 +0800

    Add support for CRB
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 64981d85626f95381440dfec476f0093bb22a71d
Author: Vector Li <huanli@redhat.com>
Date:   Thu Feb 1 11:00:34 2024 +0800

    Withdraw the support for FIPS
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 5790272fef3055bc55de79ec6aadba9fd04793b7
Author: Vector Li <huanli@redhat.com>
Date:   Wed Jan 31 11:34:39 2024 +0800

    Skip check fips when guest is container or local
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 36101b014757c72c9c7f7750a15f043a193e9600
Author: Vector Li <huanli@redhat.com>
Date:   Wed Jan 31 11:18:03 2024 +0800

    Update playbooks to support RHEL N (>=8)
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 3b859d7795321625a5e1c49c042e0f2c4484a72a
Author: Vector Li <huanli@redhat.com>
Date:   Mon Jan 29 20:49:50 2024 +0800

    Add playbook to enable/disable FIPS
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 64c98ce7476c0b5a37ed5ebd8e8f49d46a7fa5f2
Author: Vector Li <huanli@redhat.com>
Date:   Mon Jan 29 17:33:22 2024 +0800

    Refine test script check-repos.sh
    
    Extend it to support CentOS 7 and RHEL 7
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 04018e741fb646b0b93c94cb336bb439b6e6c1bb
Author: Vector Li <huanli@redhat.com>
Date:   Mon Jan 29 16:28:38 2024 +0800

    squash: some simplification and improvements
    
    It's copied from https://github.com/teemtee/tmt/tree/df25271e9dbdb2cfce83b43942f225a0ffc85e90
    which is updated by Milos

commit e7f1445216bbc44e9b7a1d29f33e435238c6e38f
Author: Vector Li <huanli@redhat.com>
Date:   Thu Jan 25 15:41:44 2024 +0800

    Simplify functions enable() and disable()
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 27d5003121773f44be3e2ec848340545e9777beb
Author: Vector Li <huanli@redhat.com>
Date:   Mon Jan 22 22:50:07 2024 +0800

    Reorg epel-enable.yaml and epel-disable.yaml
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 71b00329d608960740826f1ef64f2043535907b9
Author: Vector Li <huanli@redhat.com>
Date:   Thu Nov 16 20:44:58 2023 +0800

    Add playbook to enable EPEL on centos
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 845776e1c66fb38aa54dd11537f22325c9a3b4dd
Author: Vector Li <huanli@redhat.com>
Date:   Thu Nov 16 17:20:04 2023 +0800

    Use self.guest.ansible() to enable EPEL
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 6e6f5103de1871ee7142823c5a31e315b70d276b
Author: Vector Li <huanli@redhat.com>
Date:   Tue Nov 14 16:26:38 2023 +0800

    Update yaml files on enable/disable EPEL
    
    * Remove class Distro and the related code
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 60e690453db7bedfa102156dd62c9e2c081eb1ad
Author: Vector Li <huanli@redhat.com>
Date:   Mon Nov 13 16:51:40 2023 +0800

    Enable/disable EPEL on RHEL 7/8/9 via ansible
    
    * Add ansible playbooks
    * Get path of the playbook by getting ID and VERSION_ID from 'guest.facts.os_release_content'
    
    !! Please don't review as it is not ready to call guest.ansible() !!
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 9bd9f8af78e5e133c45720e95d016e10e352f476
Author: Vector Li <huanli@redhat.com>
Date:   Mon Oct 30 10:11:48 2023 +0800

    Remove old code block before using ansible
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 84740ab6b9a0d0bc126045608bb3b59f06ef2f40
Author: Vector Li <huanli@redhat.com>
Date:   Sun Oct 15 01:23:05 2023 +0800

    Reorg class CRB and its subclasses
    
    XXX: Please don't review as the tests are not ready, thanks!
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 3d76b7aed295e4ffeedf418d7c1c995cc787369c
Author: Vector Li <huanli@redhat.com>
Date:   Sat Oct 14 19:45:24 2023 +0800

    Reorg class EPEL and its subclasses
    
    XXX: Please don't review as the tests are not ready, thanks!
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 129fc7831b8c5938898476224e3999cfe8e1f4fb
Author: Vector Li <huanli@redhat.com>
Date:   Sat Oct 7 23:28:08 2023 +0800

    Update epel/crb according to comment from Petr
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit af374b8d5adfdd984f2fee3dbd0d772f827d7867
Author: Vector Li <huanli@redhat.com>
Date:   Thu Oct 5 19:26:17 2023 +0800

    Add tests for FIPS
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit a182a755091bf29f8b31fd655263a2f96fd3532c
Author: Vector Li <huanli@redhat.com>
Date:   Tue Oct 3 15:15:37 2023 +0800

    Add tests and update feature.py accordingly
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 53956d9dd1b478160881a033e7bf25e918b8101a
Author: Vector Li <huanli@redhat.com>
Date:   Mon Oct 2 20:24:26 2023 +0800

    Use multiline script to enable/disable EPEL/CRB (2)
    
    * For CentOS Stream 8, 9 and CentOS 7
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit a2271c4b6671a2ce81d0898c4694b8454a5b896e
Author: Vector Li <huanli@redhat.com>
Date:   Wed Sep 27 21:42:35 2023 +0800

    Use multiline script to enable/disable EPEL/CRB (1)
    
    * For RHEL 7, 8, 9
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit c431370e128701cc0944ae43db6647137868f3d6
Author: Vector Li <huanli@redhat.com>
Date:   Wed Sep 27 20:39:30 2023 +0800

    Update according to comment from Miroslav
    
    Avoid incorrect matches, such as matching RHEL9 and RHEL99 to RHEL9
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 46dfa51713716ff24b55cf5e3eb1409fc3f72233
Author: Vector Li <huanli@redhat.com>
Date:   Wed Sep 27 14:36:12 2023 +0800

    Update according to comment from Karel Srot
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 7565cdded9906d493de0d9dd8f3834dd3c978689
Author: Vector Li <huanli@redhat.com>
Date:   Tue Sep 19 17:22:23 2023 +0800

    Add CRB/FIBS support
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 61599068cf4b490dd3d3d42bd311719d4d84952e
Author: Vector Li <huanli@redhat.com>
Date:   Tue Sep 19 16:11:14 2023 +0800

    Update the option --epel
    
    `epel` should not be a list but a string. e.g.
    	epel: enabled
    And its default value is set to be `disabled`
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 435627cfe1d8872cb57060bf3ae709e4efd76bbb
Author: Vector Li <huanli@redhat.com>
Date:   Tue Sep 12 15:42:05 2023 +0800

    EPEL/disable: add more distros
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit e4b698d767d382c61177a82aebb633ef85310f3d
Author: Vector Li <huanli@redhat.com>
Date:   Tue Sep 12 15:18:35 2023 +0800

    Update 06 according to comments from Milos
    
    * Iterate over `_FEATURES` instead of `self._data`
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 106f22488512771da2603381b9645be75c18da7e
Author: Vector Li <huanli@redhat.com>
Date:   Wed Sep 6 15:45:25 2023 +0800

    Update 05 according to comments from Milos
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit b840578cadcd3c58a1b479c30efaf58f2a4d67de
Author: Vector Li <huanli@redhat.com>
Date:   Fri Sep 1 16:01:44 2023 +0800

    Update 04 according to comments from Milos
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit a302b4da3812894f25cef4543d2fdaded69922f1
Author: Vector Li <huanli@redhat.com>
Date:   Tue Aug 15 20:47:01 2023 +0800

    Update 03 according to comments from Milos and Petr
    
    * Added warning about the unsupported distro
    * Added info about "Nothing to do on Fedora for EPEL"
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit a0ae6b73367e672765b86051a62e76e7b4d66cd2
Author: Vector Li <huanli@redhat.com>
Date:   Wed Aug 9 22:31:16 2023 +0800

    Update 02 according to comments from Milos
    
    * Used 'ShellScript' instead of 'Command'
    * Added 'disable' for RHEL 8
    * Added 'disable' for RHEL 9
    * Tested the patch for CentOS Stream 9
    * Tested the patch for RHEL 8
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit ea8afaee0c99e090f0b7fed06291ec891dd907e1
Author: Vector Li <huanli@redhat.com>
Date:   Thu Aug 3 18:37:40 2023 +0800

    Update 01 according to comments from Milos
    
    * Added class Distro
    * Used parent: 'PrepareFeature'
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 50dbea0f4b2c8ddaee28a3cc258ea2cf7b257854
Author: Vector Li <huanli@redhat.com>
Date:   Mon Jul 31 16:37:30 2023 +0800

    Reorg the code according comment from Milos
    
    And get system release via guest.facts.distro
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 8d6bb80b07d6dac8757d16882da9df224ae75d96
Author: Vector Li <huanli@redhat.com>
Date:   Tue Jul 11 16:04:54 2023 +0800

    Introduce a new prepare plugin for common features
    
    Signed-off-by: Vector Li <huanli@redhat.com>

commit 6f9ca23589dfe9df9348bbce5dc2b1e69eea0744
Author: Miloš Prchlík <mprchlik@redhat.com>
Date:   Mon Jan 29 23:04:45 2024 +0100

    Fix expansion of envvar starting with `@` in fmf nodes
    
    `$FOO` fed with `FOO: @bar` resulted in `$@bar` instead of `@bar`.
    
    Reported in https://github.com/teemtee/tmt/issues/2654
    
    Refactoring of the method to make it easier to test & a unit test added
    for good measure.
```
