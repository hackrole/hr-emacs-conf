#!/usr/bin/env python
#coding=utf8

import os


def intall_ext_pro(pkg):
    cmd = "sudo apt-get install %s" % pkg
    rcode = os.system(cmd)
    if rcode != 0:
        print "%s installed failed" % pkg
    return rcode


def ask_if_install(pkg, msg=None):
    print msg
    while True:
        install_p = raw_input("if install %s.(Y/N)" % pkg)
        if install_p in ("Y", "N", "y", "n"):
            break;
    if install_p in ("Y", "y"):
        return install_ext_pro(pkg)
    else:
        print "pkg %s not installed, but choose to ingore" % pkg
        return None


def install():
    # link the directory to "~/.emacs.d"
    home = os.getenv("HOME")
    emacs_conf_path = "%s/.emacs.d" % HOME
    if os.path.exists(EMACS_CONF_PATH):
        os.remove(EMACS_CONF_PATH)
    cdir_path = os.path.dirname(os.path.realpath(__file__))
    os.symlink(cdir_path, emacs_conf_path)

    # create temp directory and file
    if not os.path.exists("./temp"):
        os.mkdir("./temp")
    # ..

    # check for ext progam
    if not os.system("which w3m"):
        ask_if_install("w3m", "w3m not installed!")

    if not os.system("which mplayer"):
        ask_if_install("mplayer", "mplayer not installed!")
    # ..

if __name__ == '__main__':
    install()