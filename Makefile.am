## Process this file with automake to produce Makefile.in
# Makefile.am for The Machine Emulator:

ACLOCAL_AMFLAGS = -I m4
AUTOMAKE_OPTIONS = 1.4 gnu
SUBDIRS = tme libltdl libtme generic ic machine host bus serial scsi tmesh tools
EXTRA_DIST = modules dist
noinst_DATA = tmeconfig.h
DISTCLEANFILES = tmeconfig.h tme-preopen.txt

# target to hook into the distribution:
#
dist-hook:
	rm -f ${distdir}/libtme/recode-host.c
	find $(distdir)/dist -name CVS -a -exec rm -r {} ';' -a -prune

LIBTOOL_DEPS = @LIBTOOL_DEPS@
libtool: $(LIBTOOL_DEPS)
	$(SHELL) ./config.status libtool
