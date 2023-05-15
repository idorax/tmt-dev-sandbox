```bash
huanli@ThinkPadMTV:CentOS7$ ./parse.py epel.repo
config1 sections: ['epel', 'epel-debuginfo', 'epel-source']
config1['epel']: ['name', 'metalink', 'failovermethod', 'enabled', 'gpgcheck', 'gpgkey']
config1['epel']['enabled']:  1

###############################################################################

config2['epel']['enabled']:  1
config2['epel-debuginfo']['enabled']:  1
config2['epel-source']['enabled']:  1
Oops, bad config2['epel']['foo']
Oops, bad config2['foo']['enabled']
Oops, bad config2['xxx']['xxx']
```


---


```python
huanli@ThinkPadMTV:CentOS7$ python3 -m pdb ./parse.py epel.repo
> /var/tmp/sandbox/github/tmt-dev-sandbox/misc/1062/CentOS7/parse.py(3)<module>()
-> import sys
(Pdb) b 49
Breakpoint 1 at /var/tmp/sandbox/github/tmt-dev-sandbox/misc/1062/CentOS7/parse.py:49
(Pdb) b 60
Breakpoint 2 at /var/tmp/sandbox/github/tmt-dev-sandbox/misc/1062/CentOS7/parse.py:60
(Pdb) c
> /var/tmp/sandbox/github/tmt-dev-sandbox/misc/1062/CentOS7/parse.py(49)main()
-> config1 = configparser.ConfigParser()
(Pdb) l
 44  	        print(f"Usage: {argv[0]} <repo file>" , file=sys.stderr)
 45  	        return 1
 46
 47  	    # read from file
 48  	    repo_file = argv[1]
 49 B->	    config1 = configparser.ConfigParser()
 50  	    config1.read(repo_file)
 51  	    print("config1 sections:", config1.sections())
 52  	    if config1.has_section('epel'):
 53  	        print("config1['epel']:", config1.options('epel'))
 54  	        if config1.has_option('epel', 'enabled'):
(Pdb) n
> /var/tmp/sandbox/github/tmt-dev-sandbox/misc/1062/CentOS7/parse.py(50)main()
-> config1.read(repo_file)
(Pdb)
> /var/tmp/sandbox/github/tmt-dev-sandbox/misc/1062/CentOS7/parse.py(51)main()
-> print("config1 sections:", config1.sections())
(Pdb)
config1 sections: ['epel', 'epel-debuginfo', 'epel-source']
> /var/tmp/sandbox/github/tmt-dev-sandbox/misc/1062/CentOS7/parse.py(52)main()
-> if config1.has_section('epel'):
(Pdb) p type(config1)
<class 'configparser.ConfigParser'>
(Pdb) pp vars(config1)
{'_allow_no_value': False,
 '_comment_prefixes': ('#', ';'),
 '_converters': <configparser.ConverterMapping object at 0x7f54da28c0d0>,
 '_defaults': {},
 '_delimiters': ('=', ':'),
 '_dict': <class 'dict'>,
 '_empty_lines_in_values': True,
 '_inline_comment_prefixes': (),
 '_interpolation': <configparser.BasicInterpolation object at 0x7f54da28ea40>,
 '_optcre': re.compile('\n        (?P<option>.*?)                    # very permissive!\n        \\s*(?P<vi>=|:)\\s*              # any number of space/tab,\n                                           # followed by any of t, re.VERBOSE),
 '_proxies': {'DEFAULT': <Section: DEFAULT>,
              'epel': <Section: epel>,
              'epel-debuginfo': <Section: epel-debuginfo>,
              'epel-source': <Section: epel-source>},
 '_sections': {'epel': {'enabled': '1',
                        'failovermethod': 'priority',
                        'gpgcheck': '1',
                        'gpgkey': 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7',
                        'metalink': 'https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=$basearch',
                        'name': 'Extra Packages for Enterprise Linux 7 - '
                                '$basearch'},
               'epel-debuginfo': {'enabled': '1',
                                  'failovermethod': 'priority',
                                  'gpgcheck': '1',
                                  'gpgkey': 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7',
                                  'metalink': 'https://mirrors.fedoraproject.org/metalink?repo=epel-debug-7&arch=$basearch',
                                  'name': 'Extra Packages for Enterprise Linux '
                                          '7 - $basearch - Debug'},
               'epel-source': {'enabled': '1',
                               'failovermethod': 'priority',
                               'gpgcheck': '1',
                               'gpgkey': 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7',
                               'metalink': 'https://mirrors.fedoraproject.org/metalink?repo=epel-source-7&arch=$basearch',
                               'name': 'Extra Packages for Enterprise Linux 7 '
                                       '- $basearch - Source'}},
 '_strict': True,
 'default_section': 'DEFAULT'}
(Pdb) p type(config1['epel'])
<class 'configparser.SectionProxy'>
(Pdb) p config1.get('epel', 'enabled')
'1'
(Pdb) p config1.get('epel-debuginfo', 'enabled')
'1'
(Pdb) p config1.get('epel-source', 'enabled')
'1'
(Pdb) p config1.get('epel', 'FOOXXX')
*** configparser.NoOptionError: No option 'fooxxx' in section: 'epel'
(Pdb) p config1.get('XXXX', 'enabled')
*** configparser.NoSectionError: No section: 'XXXX'
(Pdb) p config1.get('epel-source', 'name')
'Extra Packages for Enterprise Linux 7 - $basearch - Source'
(Pdb) c
config1['epel']: ['name', 'metalink', 'failovermethod', 'enabled', 'gpgcheck', 'gpgkey']
config1['epel']['enabled']:  1

###############################################################################

> /var/tmp/sandbox/github/tmt-dev-sandbox/misc/1062/CentOS7/parse.py(60)main()
-> config2 = configparser.ConfigParser()
(Pdb) n
> /var/tmp/sandbox/github/tmt-dev-sandbox/misc/1062/CentOS7/parse.py(61)main()
-> config2.read_string(EPEL_REPOS)
(Pdb) n
> /var/tmp/sandbox/github/tmt-dev-sandbox/misc/1062/CentOS7/parse.py(62)main()
-> d = {'epel':'enabled', 'epel-debuginfo':'enabled', 'epel-source':'enabled'}
(Pdb) pp config2
<configparser.ConfigParser object at 0x7f54da28d600>
(Pdb) pp config2.__dict__
{'_allow_no_value': False,
 '_comment_prefixes': ('#', ';'),
 '_converters': <configparser.ConverterMapping object at 0x7f54da28e9b0>,
 '_defaults': {},
 '_delimiters': ('=', ':'),
 '_dict': <class 'dict'>,
 '_empty_lines_in_values': True,
 '_inline_comment_prefixes': (),
 '_interpolation': <configparser.BasicInterpolation object at 0x7f54da28ea40>,
 '_optcre': re.compile('\n        (?P<option>.*?)                    # very permissive!\n        \\s*(?P<vi>=|:)\\s*              # any number of space/tab,\n                                           # followed by any of t, re.VERBOSE),
 '_proxies': {'DEFAULT': <Section: DEFAULT>,
              'epel': <Section: epel>,
              'epel-debuginfo': <Section: epel-debuginfo>,
              'epel-source': <Section: epel-source>},
 '_sections': {'epel': {'enabled': '1',
                        'failovermethod': 'priority',
                        'gpgcheck': '1',
                        'gpgkey': 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7',
                        'metalink': 'https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=$basearch',
                        'name': 'Extra Packages for Enterprise Linux 7 - '
                                '$basearch'},
               'epel-debuginfo': {'enabled': '1',
                                  'failovermethod': 'priority',
                                  'gpgcheck': '1',
                                  'gpgkey': 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7',
                                  'metalink': 'https://mirrors.fedoraproject.org/metalink?repo=epel-debug-7&arch=$basearch',
                                  'name': 'Extra Packages for Enterprise Linux '
                                          '7 - $basearch - Debug'},
               'epel-source': {'enabled': '1',
                               'failovermethod': 'priority',
                               'gpgcheck': '1',
                               'gpgkey': 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7',
                               'metalink': 'https://mirrors.fedoraproject.org/metalink?repo=epel-source-7&arch=$basearch',
                               'name': 'Extra Packages for Enterprise Linux 7 '
                                       '- $basearch - Source'}},
 '_strict': True,
 'default_section': 'DEFAULT'}
(Pdb) pp config2.get('epel', 'enabled')
'1'
(Pdb) pp config2.get('epel-debuginfo', 'enabled')
'1'
(Pdb) pp config2.get('epel-source', 'enabled')
'1'
(Pdb) q
```
