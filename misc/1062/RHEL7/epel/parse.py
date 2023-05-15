#!/usr/bin/python3

import sys
import configparser

# https://stackoverflow.com/questions/8884188/how-to-read-and-write-ini-file-with-python3
# https://docs.python.org/3/library/configparser.html

EPEL_REPOS = """
[epel]
name=Extra Packages for Enterprise Linux 7 - $basearch
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place its address here.
#baseurl=http://download.example/pub/epel/7/$basearch
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=$basearch&infra=$infra&content=$contentdir
failovermethod=priority
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7

[epel-debuginfo]
name=Extra Packages for Enterprise Linux 7 - $basearch - Debug
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place its address here.
#baseurl=http://download.example/pub/epel/7/$basearch/debug
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-debug-7&arch=$basearch&infra=$infra&content=$contentdir
failovermethod=priority
enabled=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
gpgcheck=1

[epel-source]
name=Extra Packages for Enterprise Linux 7 - $basearch - Source
# It is much more secure to use the metalink, but if you wish to use a local mirror
# place it's address here.
#baseurl=http://download.example/pub/epel/7/source/tree/
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-source-7&arch=$basearch&infra=$infra&content=$contentdir
failovermethod=priority
enabled=0
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
