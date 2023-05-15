#!/usr/bin/python3

import sys
import configparser

# https://stackoverflow.com/questions/8884188/how-to-read-and-write-ini-file-with-python3
# https://docs.python.org/3/library/configparser.html
#
# To get epel.repo from remote host:
# $ ssh root@kvm-01-guest10.lab.eng.brq2.redhat.com 'cat /etc/yum.repos.d/epel.repo' > epel.repo
#

EPEL_REPOS = """
[epel]
name=Extra Packages for Enterprise Linux 7 - $basearch
#baseurl=http://download.fedoraproject.org/pub/epel/7/$basearch
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=$basearch
failovermethod=priority
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7

[epel-debuginfo]
name=Extra Packages for Enterprise Linux 7 - $basearch - Debug
#baseurl=http://download.fedoraproject.org/pub/epel/7/$basearch/debug
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-debug-7&arch=$basearch
failovermethod=priority
enabled=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
gpgcheck=1

[epel-source]
name=Extra Packages for Enterprise Linux 7 - $basearch - Source
#baseurl=http://download.fedoraproject.org/pub/epel/7/SRPMS
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-source-7&arch=$basearch
failovermethod=priority
enabled=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
gpgcheck=1
"""

def main(argc, argv):
    if argc != 2:
        print(f"Usage: {argv[0]} <repo file>" , file=sys.stderr)
        return 1

    # read from file
    repo_file = argv[1]
    config1 = configparser.ConfigParser()
    config1.read(repo_file)
    print("config1 sections:", config1.sections())
    if config1.has_section('epel'):
        print("config1['epel']:", config1.options('epel'))
        if config1.has_option('epel', 'enabled'):
            print("config1['epel']['enabled']: ", config1.get('epel', 'enabled'))

    print('\n' + '#' * 79 + '\n')

    # read from text
    config2 = configparser.ConfigParser()
    config2.read_string(EPEL_REPOS)
    d = {'epel':'enabled', 'epel-debuginfo':'enabled', 'epel-source':'enabled'}
    for key in d.keys():
        section = key
        option = d.get(key)
        if config2.has_option(section, option):
            print(f"config2['{section}']['{option}']: ", config2.get(section, option))
        else:
            print(f"Oops, bad config2['{section}']['{option}']")

    d_bad = {'epel': 'foo', 'foo': 'enabled', 'xxx': 'xxx'}
    for key in d_bad.keys():
        section = key
        option = d_bad.get(key)
        if config2.has_option(section, option):
            print(f"config2['{section}']['{option}']: ", config2.get(section, option))
        else:
            print(f"Oops, bad config2['{section}']['{option}']")

    return 0

if __name__ == '__main__':
    sys.exit(main(len(sys.argv), sys.argv))
