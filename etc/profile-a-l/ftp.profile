# Firejail profile for ftp
# Description: standard File Access Protocol utility
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include ftp.local
# Persistent global definitions
include globals.local

noblacklist ${PATH}/ftp

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-proc.inc
include disable-programs.inc
#include disable-shell.inc
include disable-write-mnt.inc
include disable-X11.inc
include disable-xdg.inc

apparmor
caps.drop all
ipc-namespace
machine-id
netfilter
no3d
nodvd
nogroups
noinput
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol inet,inet6
seccomp
shell none
tracelog

#disable-mnt
#private-bin PROGRAMS
private-cache
private-dev
#private-etc FILES
private-tmp

dbus-user none
dbus-system none

memory-deny-write-execute
noexec ${HOME}
