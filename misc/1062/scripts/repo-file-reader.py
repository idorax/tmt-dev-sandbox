#!/usr/bin/python3
""" Get repo status from repo file """

import sys
import configparser


CstrNONE    = 0
CstrGRAY    = 30
CstrRED     = 31
CstrGREEN   = 32
CstrYELLOW  = 33
CstrBLUE    = 34
CstrMAGENTA = 35
CstrCYAN    = 36
CstrWHITE   = 37
class Cstr(object):
    """
    Cstr(object) -> Colorful string

        o none    : CstrNONE      :  0 : "%s" % str
        o gray    : CstrGRAY      : 30 : "\033[1;30m%s\033[m" % str
        o red     : CstrRED       : 31 : "\033[1;31m%s\033[m" % str
        o green   : CstrGREEN     : 32 : "\033[1;32m%s\033[m" % str
        o yellow  : CstrYELLOW    : 33 : "\033[1;33m%s\033[m" % str
        o blue    : CstrBLUE      : 34 : "\033[1;34m%s\033[m" % str
        o magenta : CstrMAGENTA   : 35 : "\033[1;35m%s\033[m" % str
        o cyan    : CstrCYAN      : 36 : "\033[1;36m%s\033[m" % str
        o white   : CstrWHITE     : 37 : "\033[1;37m%s\033[m" % str

        Return a colorful string representation of the object.

        Example:
        (1) print Cstr("Hello World", CstrRED)
        (2) print Cstr("Hello World")
        (3) print Cstr()
    """

    def __init__(self, *, s="", color=CstrNONE):
        self.color = color
        self.tstr  = s
        self.cstr  = self._tocstr()

    def __str__(self):
        return self.cstr

    def __len__(self):
        return len(self.tstr)

    def _tocstr(self):
        if self.color == CstrNONE:
            return self.tstr

        if not self._isatty():
            return self.tstr
        return "\033[1;%dm%s\033[m" % (self.color, self.tstr)

    def _isatty(self):
        import os
        s = os.getenv("ISATTY")
        if s is None:
            s = ""

        if s.upper() == "YES":
            return True

        if s.upper() == "NO":
            return False

        if sys.stdout.isatty() and sys.stderr.isatty():
            return True
        return False


def main(argc, argv):
    if argc != 2:
        print(f"Usage: {argv[0]} <repo file>" , file=sys.stderr)
        print("e.g.", file=sys.stderr)
        print(f"       {argv[0]} /etc/yum.repos.d/epel.repo", file=sys.stderr)
        print(f"       {argv[0]} /etc/yum.repos.d/epel-testing.repo", file=sys.stderr)
        return 1

    repo_file = argv[1]
    config = configparser.ConfigParser()
    config.read(repo_file)
    print(' '.join(config.sections()))
    print()
    cstr_enabled = Cstr(s='enabled', color=CstrCYAN)
    cstr_disabled = Cstr(s='disabled', color=CstrRED)
    for section in config.sections():
        key = 'enabled'
        value = config.get(section, key) if config.has_option(section, key) else None
        if value is None:
            continue
        comment = cstr_disabled if int(value) == 0 else cstr_enabled
        print(f"{section}['{key}'] = {value} # {comment}")
    return 0


if __name__ == '__main__':
    sys.exit(main(len(sys.argv), sys.argv))
