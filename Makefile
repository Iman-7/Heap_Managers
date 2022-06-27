# Makefile.in generated by automake 1.8.5 from Makefile.am.
# Makefile.  Generated from Makefile.in by configure.

# Copyright (C) 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002,
# 2003, 2004  Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



#
# Makefile.am --- automake input file for gawk
#
# Copyright (C) 2000-2004 the Free Software Foundation, Inc.
#
# This file is part of GAWK, the GNU implementation of the
# AWK Programming Language.
#
# GAWK is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# GAWK is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA
#

SOURCES = $(gawk_SOURCES) $(pgawk_SOURCES)

srcdir = .
top_srcdir = .

pkgdatadir = $(datadir)/gawk
pkglibdir = $(libdir)/gawk
pkgincludedir = $(includedir)/gawk
top_builddir = .
am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
INSTALL = ./install-sh -c
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_HEADER = $(INSTALL_DATA)
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
host_triplet = x86_64-unknown-linux-gnu
ANSI2KNR = 
bin_PROGRAMS = gawk$(EXEEXT) pgawk$(EXEEXT)
DIST_COMMON = README $(am__configure_deps) $(srcdir)/Makefile.am \
	$(srcdir)/Makefile.in $(srcdir)/configh.in \
	$(srcdir)/version.in $(top_srcdir)/configure \
	$(top_srcdir)/intl/Makefile.in ABOUT-NLS AUTHORS COPYING \
	ChangeLog INSTALL NEWS ansi2knr.1 ansi2knr.c awkgram.c \
	config.guess config.rpath config.sub depcomp install-sh \
	missing mkinstalldirs ylwrap
subdir = .
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
am__aclocal_m4_deps = $(top_srcdir)/m4/arch.m4 \
	$(top_srcdir)/m4/codeset.m4 $(top_srcdir)/m4/gettext.m4 \
	$(top_srcdir)/m4/glibc21.m4 $(top_srcdir)/m4/iconv.m4 \
	$(top_srcdir)/m4/intdiv0.m4 $(top_srcdir)/m4/intmax.m4 \
	$(top_srcdir)/m4/intmax_t.m4 $(top_srcdir)/m4/inttypes-pri.m4 \
	$(top_srcdir)/m4/inttypes.m4 $(top_srcdir)/m4/inttypes_h.m4 \
	$(top_srcdir)/m4/lcmessage.m4 $(top_srcdir)/m4/lib-ld.m4 \
	$(top_srcdir)/m4/lib-link.m4 $(top_srcdir)/m4/lib-prefix.m4 \
	$(top_srcdir)/m4/longdouble.m4 $(top_srcdir)/m4/longlong.m4 \
	$(top_srcdir)/m4/nls.m4 $(top_srcdir)/m4/po.m4 \
	$(top_srcdir)/m4/printf-posix.m4 $(top_srcdir)/m4/progtest.m4 \
	$(top_srcdir)/m4/signed.m4 $(top_srcdir)/m4/size_max.m4 \
	$(top_srcdir)/m4/socket.m4 $(top_srcdir)/m4/stdint_h.m4 \
	$(top_srcdir)/m4/strtod.m4 $(top_srcdir)/m4/uintmax_t.m4 \
	$(top_srcdir)/m4/ulonglong.m4 $(top_srcdir)/m4/wchar_t.m4 \
	$(top_srcdir)/m4/wint_t.m4 $(top_srcdir)/m4/xsize.m4 \
	$(top_srcdir)/configure.ac
am__configure_deps = $(am__aclocal_m4_deps) $(CONFIGURE_DEPENDENCIES) \
	$(ACLOCAL_M4)
am__CONFIG_DISTCLEAN_FILES = config.status config.cache config.log \
 configure.lineno configure.status.lineno
mkinstalldirs = $(SHELL) $(top_srcdir)/mkinstalldirs
CONFIG_HEADER = config.h
CONFIG_CLEAN_FILES = intl/Makefile 
am__installdirs = "$(DESTDIR)$(bindir)"
binPROGRAMS_INSTALL = $(INSTALL_PROGRAM)
PROGRAMS = $(bin_PROGRAMS)
am__objects_1 = array$U.$(OBJEXT) awkgram$U.$(OBJEXT) \
	builtin$U.$(OBJEXT) dfa$U.$(OBJEXT) ext$U.$(OBJEXT) \
	field$U.$(OBJEXT) gawkmisc$U.$(OBJEXT) getopt$U.$(OBJEXT) \
	getopt1$U.$(OBJEXT) io$U.$(OBJEXT) main$U.$(OBJEXT) \
	msg$U.$(OBJEXT) node$U.$(OBJEXT) random$U.$(OBJEXT) \
	re$U.$(OBJEXT) regex$U.$(OBJEXT) replace$U.$(OBJEXT) \
	version$U.$(OBJEXT) allocate$U.$(OBJEXT)
am_gawk_OBJECTS = $(am__objects_1) eval$U.$(OBJEXT) \
	profile$U.$(OBJEXT)
gawk_OBJECTS = $(am_gawk_OBJECTS)
gawk_LDADD = $(LDADD)
gawk_DEPENDENCIES =
am_pgawk_OBJECTS = $(am__objects_1) eval_p$U.$(OBJEXT) \
	profile_p$U.$(OBJEXT)
pgawk_OBJECTS = $(am_pgawk_OBJECTS)
pgawk_LDADD = $(LDADD)
pgawk_DEPENDENCIES =
DEFAULT_INCLUDES = -I. -I$(srcdir) -I.
depcomp = $(SHELL) $(top_srcdir)/depcomp
am__depfiles_maybe = depfiles
DEP_FILES = ./$(DEPDIR)/array$U.Po \
	./$(DEPDIR)/awkgram$U.Po ./$(DEPDIR)/builtin$U.Po \
	./$(DEPDIR)/dfa$U.Po ./$(DEPDIR)/eval$U.Po \
	./$(DEPDIR)/eval_p$U.Po ./$(DEPDIR)/ext$U.Po \
	./$(DEPDIR)/field$U.Po ./$(DEPDIR)/gawkmisc$U.Po \
	./$(DEPDIR)/getopt$U.Po ./$(DEPDIR)/getopt1$U.Po \
	./$(DEPDIR)/io$U.Po ./$(DEPDIR)/main$U.Po \
	./$(DEPDIR)/msg$U.Po ./$(DEPDIR)/node$U.Po \
	./$(DEPDIR)/profile$U.Po \
	./$(DEPDIR)/profile_p$U.Po ./$(DEPDIR)/random$U.Po \
	./$(DEPDIR)/re$U.Po ./$(DEPDIR)/regex$U.Po \
	./$(DEPDIR)/replace$U.Po ./$(DEPDIR)/version$U.Po \
	./$(DEPDIR)/allocate$U.Po
COMPILE = $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) \
	$(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
CCLD = $(CC)
LINK = $(CCLD) $(AM_CFLAGS) $(CFLAGS) $(AM_LDFLAGS) $(LDFLAGS) -o $@
YACCCOMPILE = $(YACC) $(YFLAGS) $(AM_YFLAGS)
YLWRAP = $(top_srcdir)/ylwrap
SOURCES = $(gawk_SOURCES) $(pgawk_SOURCES)
DIST_SOURCES = $(gawk_SOURCES) $(pgawk_SOURCES)
RECURSIVE_TARGETS = all-recursive check-recursive dvi-recursive \
	html-recursive info-recursive install-data-recursive \
	install-exec-recursive install-info-recursive \
	install-recursive installcheck-recursive installdirs-recursive \
	pdf-recursive ps-recursive uninstall-info-recursive \
	uninstall-recursive
ETAGS = etags
CTAGS = ctags
DIST_SUBDIRS = $(SUBDIRS)
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)
distdir = $(PACKAGE)-$(VERSION)
top_distdir = $(distdir)
am__remove_distdir = \
  { test ! -d $(distdir) \
    || { find $(distdir) -type d ! -perm -200 -exec chmod u+w {} ';' \
         && rm -fr $(distdir); }; }
DIST_ARCHIVES = $(distdir).tar.gz $(distdir).tar.bz2
GZIP_ENV = --best
distuninstallcheck_listfiles = find . -type f -print
distcleancheck_listfiles = find . -type f -print
ACLOCAL = ${SHELL} /home/daliawk/Downloads/gawk-3.1.4/missing --run aclocal-1.8
ALLOCA = 
AMDEP_FALSE = #
AMDEP_TRUE = 
AMTAR = ${SHELL} /home/daliawk/Downloads/gawk-3.1.4/missing --run tar
AUTOCONF = ${SHELL} /home/daliawk/Downloads/gawk-3.1.4/missing --run autoconf
AUTOHEADER = ${SHELL} /home/daliawk/Downloads/gawk-3.1.4/missing --run autoheader
AUTOMAKE = ${SHELL} /home/daliawk/Downloads/gawk-3.1.4/missing --run automake-1.8
AWK = mawk
BUILD_INCLUDED_LIBINTL = no
CATOBJEXT = .gmo
CC = gcc
CCDEPMODE = depmode=gcc3
CFLAGS = -g -O2
CPP = gcc -E
CPPFLAGS = 
CYGPATH_W = echo
DATADIRNAME = share
DEFS = -DDEFPATH=$(DEFPATH) -DHAVE_CONFIG_H -DGAWK -DLOCALEDIR="\"$(datadir)/locale\""
DEPDIR = .deps
ECHO_C = 
ECHO_N = -n
ECHO_T = 
EGREP = grep -E
EXEEXT = 
GENCAT = gencat
GLIBC21 = yes
GMSGFMT = :
HAVE_ASPRINTF = 1
HAVE_POSIX_PRINTF = 1
HAVE_SNPRINTF = 1
HAVE_WPRINTF = 0
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_PROGRAM = ${SHELL} $(install_sh) -c -s
INSTOBJEXT = .mo
INTLBISON = :
INTLLIBS = 
INTLOBJS = 
INTL_LIBTOOL_SUFFIX_PREFIX = 
LDFLAGS =  -export-dynamic
LIBICONV = 
LIBINTL = 
LIBOBJS =  mktime$U.o
LIBS = -ldl -lm 
LN_S = ln -s
LTLIBICONV = 
LTLIBINTL = 
LTLIBOBJS =  mktime$U.lo
MAKEINFO = ${SHELL} /home/daliawk/Downloads/gawk-3.1.4/missing --run makeinfo
MKINSTALLDIRS = $(top_builddir)/./mkinstalldirs
MSGFMT = :
MSGMERGE = :
OBJEXT = o
PACKAGE = gawk
PACKAGE_BUGREPORT = bug-gawk@gnu.org
PACKAGE_NAME = GNU Awk
PACKAGE_STRING = GNU Awk 3.1.4
PACKAGE_TARNAME = gawk
PACKAGE_VERSION = 3.1.4
PATH_SEPARATOR = :
POSUB = po
RANLIB = ranlib
SET_MAKE = 
SHELL = /bin/bash
SOCKET_LIBS = 
STRIP = 
U = 
USE_INCLUDED_LIBINTL = no
USE_NLS = yes
VERSION = 3.1.4
XGETTEXT = :
YACC = yacc
ac_ct_CC = gcc
ac_ct_RANLIB = ranlib
ac_ct_STRIP = 
am__fastdepCC_FALSE = #
am__fastdepCC_TRUE = 
am__include = include
am__leading_dot = .
am__quote = 
bindir = ${exec_prefix}/bin
build = x86_64-unknown-linux-gnu
build_alias = 
build_cpu = x86_64
build_os = linux-gnu
build_vendor = unknown

# Set autoconf Makefile.in variables correctly
datadir = ${prefix}/share
exec_prefix = ${prefix}
host = x86_64-unknown-linux-gnu
host_alias = 
host_cpu = x86_64
host_os = linux-gnu
host_vendor = unknown
includedir = ${prefix}/include
infodir = ${prefix}/info
install_sh = /home/daliawk/Downloads/gawk-3.1.4/install-sh
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec/awk
localstatedir = ${prefix}/var
mandir = ${prefix}/man
mkdir_p = mkdir -p -- .
oldincludedir = /usr/include
prefix = /usr/local
program_transform_name = s,x,x,
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
sysconfdir = ${prefix}/etc
target_alias = 

# Automatic de-ANSI-fication if needed, make .bz2 files also.
AUTOMAKE_OPTIONS = ansi2knr dist-bzip2

# This undocumented variable insures that aclocal runs
# correctly after changing configure.ac
ACLOCAL_AMFLAGS = -I m4

# This insures that make flags get passed down to child makes.
AM_MAKEFLAGS = 'CFLAGS=$(CFLAGS)' 'LDFLAGS=$(LDFLAGS)'

# Stuff to include in the dist that doesn't need it's own
# Makefile.am files
EXTRA_DIST = \
	COPYING \
	FUTURES \
	INSTALL \
	LIMITATIONS \
	NEWS \
	POSIX.STD \
	PROBLEMS \
	README_d \
	bisonfix.sed \
	config.guess \
	config.rpath  \
	config.sub \
	depcomp \
	extension \
	m4 \
	missing \
	missing_d \
	pc \
	posix \
	regcomp.c \
	regex_internal.c \
	regex_internal.h \
	regexec.c \
	unsupported \
	vms \
	ylwrap


# The order to do things in.
# Build in intl first in case we need the local gettext version.
# Build explicitly  "." next in order to build gawk first, so
# that `make check' without a prior `make' works.
SUBDIRS = \
	intl \
	. \
	awklib \
	doc \
	po \
	test


# sources for both gawk and pgawk
base_sources = \
	array.c \
	awk.h \
	awkgram.y \
	builtin.c \
	custom.h \
	dfa.c \
	dfa.h \
	ext.c \
	field.c \
	gawkmisc.c \
	getopt.c \
	getopt.h \
	getopt1.c \
	gettext.h \
	io.c \
	mbsupport.h \
	main.c \
	msg.c \
	node.c \
	protos.h \
	random.c \
	random.h \
	re.c \
	regex.c \
	regex.h \
	replace.c \
	allocate.c \
	version.in \
	version.c

gawk_SOURCES = $(base_sources) eval.c profile.c
pgawk_SOURCES = $(base_sources) eval_p.c profile_p.c

# Get extra libs as needed
LDADD =  
awkdatadir = ${prefix}/share/awk

# stuff for compiling gawk/pgawk
DEFPATH = "\".$(PATH_SEPARATOR)$(awkdatadir)\""
AM_CPPFLAGS = -Iintl

# Get rid of core files when cleaning
CLEANFILES = core core.*

# We want hard links for install-exec-hook, below
LN = ln
SUFFIXES = .i
all: config.h
	$(MAKE) $(AM_MAKEFLAGS) all-recursive

.SUFFIXES:
.SUFFIXES: .i .c .o .obj .y
am--refresh:
	@:
$(srcdir)/Makefile.in:  $(srcdir)/Makefile.am  $(am__configure_deps)
	@for dep in $?; do \
	  case '$(am__configure_deps)' in \
	    *$$dep*) \
	      echo ' cd $(srcdir) && $(AUTOMAKE) --gnu '; \
	      cd $(srcdir) && $(AUTOMAKE) --gnu  \
		&& exit 0; \
	      exit 1;; \
	  esac; \
	done; \
	echo ' cd $(top_srcdir) && $(AUTOMAKE) --gnu  Makefile'; \
	cd $(top_srcdir) && \
	  $(AUTOMAKE) --gnu  Makefile
.PRECIOUS: Makefile
Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status
	@case '$?' in \
	  *config.status*) \
	    echo ' $(SHELL) ./config.status'; \
	    $(SHELL) ./config.status;; \
	  *) \
	    echo ' cd $(top_builddir) && $(SHELL) ./config.status $@ $(am__depfiles_maybe)'; \
	    cd $(top_builddir) && $(SHELL) ./config.status $@ $(am__depfiles_maybe);; \
	esac;

$(top_builddir)/config.status: $(top_srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	$(SHELL) ./config.status --recheck

$(top_srcdir)/configure:  $(am__configure_deps)
	cd $(srcdir) && $(AUTOCONF)
$(ACLOCAL_M4):  $(am__aclocal_m4_deps)
	cd $(srcdir) && $(ACLOCAL) $(ACLOCAL_AMFLAGS)

config.h: stamp-h1
	@if test ! -f $@; then \
	  rm -f stamp-h1; \
	  $(MAKE) stamp-h1; \
	else :; fi

stamp-h1: $(srcdir)/configh.in $(top_builddir)/config.status
	@rm -f stamp-h1
	cd $(top_builddir) && $(SHELL) ./config.status config.h
$(srcdir)/configh.in:  $(am__configure_deps) 
	cd $(top_srcdir) && $(AUTOHEADER)
	rm -f stamp-h1
	touch $@

distclean-hdr:
	-rm -f config.h stamp-h1
intl/Makefile: $(top_builddir)/config.status $(top_srcdir)/intl/Makefile.in
	cd $(top_builddir) && $(SHELL) ./config.status $@
version.c: $(top_builddir)/config.status $(srcdir)/version.in
	cd $(top_builddir) && $(SHELL) ./config.status $@
install-binPROGRAMS: $(bin_PROGRAMS)
	@$(NORMAL_INSTALL)
	test -z "$(bindir)" || $(mkdir_p) "$(DESTDIR)$(bindir)"
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	  p1=`echo $$p|sed 's/$(EXEEXT)$$//'`; \
	  if test -f $$p \
	  ; then \
	    f=`echo "$$p1" | sed 's,^.*/,,;$(transform);s/$$/$(EXEEXT)/'`; \
	   echo " $(INSTALL_PROGRAM_ENV) $(binPROGRAMS_INSTALL) '$$p' '$(DESTDIR)$(bindir)/$$f'"; \
	   $(INSTALL_PROGRAM_ENV) $(binPROGRAMS_INSTALL) "$$p" "$(DESTDIR)$(bindir)/$$f" || exit 1; \
	  else :; fi; \
	done

uninstall-binPROGRAMS:
	@$(NORMAL_UNINSTALL)
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	  f=`echo "$$p" | sed 's,^.*/,,;s/$(EXEEXT)$$//;$(transform);s/$$/$(EXEEXT)/'`; \
	  echo " rm -f '$(DESTDIR)$(bindir)/$$f'"; \
	  rm -f "$(DESTDIR)$(bindir)/$$f"; \
	done

clean-binPROGRAMS:
	-test -z "$(bin_PROGRAMS)" || rm -f $(bin_PROGRAMS)
gawk$(EXEEXT): $(gawk_OBJECTS) $(gawk_DEPENDENCIES) 
	@rm -f gawk$(EXEEXT)
	$(LINK) $(gawk_LDFLAGS) $(gawk_OBJECTS) $(gawk_LDADD) $(LIBS)
pgawk$(EXEEXT): $(pgawk_OBJECTS) $(pgawk_DEPENDENCIES) 
	@rm -f pgawk$(EXEEXT)
	$(LINK) $(pgawk_LDFLAGS) $(pgawk_OBJECTS) $(pgawk_LDADD) $(LIBS)

mostlyclean-compile:
	-rm -f *.$(OBJEXT)

distclean-compile:
	-rm -f *.tab.c
ansi2knr: ansi2knr.$(OBJEXT)
	$(LINK) ansi2knr.$(OBJEXT) $(LIBS)
ansi2knr.$(OBJEXT): $(CONFIG_HEADER)

clean-krextra:
	-rm -f ansi2knr

mostlyclean-kr:
	-test "$U" = "" || rm -f *_.c

include ./$(DEPDIR)/array$U.Po
include ./$(DEPDIR)/awkgram$U.Po
include ./$(DEPDIR)/builtin$U.Po
include ./$(DEPDIR)/dfa$U.Po
include ./$(DEPDIR)/eval$U.Po
include ./$(DEPDIR)/eval_p$U.Po
include ./$(DEPDIR)/ext$U.Po
include ./$(DEPDIR)/field$U.Po
include ./$(DEPDIR)/gawkmisc$U.Po
include ./$(DEPDIR)/getopt$U.Po
include ./$(DEPDIR)/getopt1$U.Po
include ./$(DEPDIR)/io$U.Po
include ./$(DEPDIR)/main$U.Po
include ./$(DEPDIR)/msg$U.Po
include ./$(DEPDIR)/node$U.Po
include ./$(DEPDIR)/profile$U.Po
include ./$(DEPDIR)/profile_p$U.Po
include ./$(DEPDIR)/random$U.Po
include ./$(DEPDIR)/re$U.Po
include ./$(DEPDIR)/regex$U.Po
include ./$(DEPDIR)/replace$U.Po
include ./$(DEPDIR)/allocate$U.Po
include ./$(DEPDIR)/version$U.Po

.c.o:
	if $(COMPILE) -MT $@ -MD -MP -MF "$(DEPDIR)/$*.Tpo" -c -o $@ $<; \
	then mv -f "$(DEPDIR)/$*.Tpo" "$(DEPDIR)/$*.Po"; else rm -f "$(DEPDIR)/$*.Tpo"; exit 1; fi
#	source='$<' object='$@' libtool=no \
#	depfile='$(DEPDIR)/$*.Po' tmpdepfile='$(DEPDIR)/$*.TPo' \
#	$(CCDEPMODE) $(depcomp) \
#	$(COMPILE) -c $<

.c.obj:
	if $(COMPILE) -MT $@ -MD -MP -MF "$(DEPDIR)/$*.Tpo" -c -o $@ `$(CYGPATH_W) '$<'`; \
	then mv -f "$(DEPDIR)/$*.Tpo" "$(DEPDIR)/$*.Po"; else rm -f "$(DEPDIR)/$*.Tpo"; exit 1; fi
#	source='$<' object='$@' libtool=no \
#	depfile='$(DEPDIR)/$*.Po' tmpdepfile='$(DEPDIR)/$*.TPo' \
#	$(CCDEPMODE) $(depcomp) \
#	$(COMPILE) -c `$(CYGPATH_W) '$<'`
array_.c: array.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/array.c; then echo $(srcdir)/array.c; else echo array.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
awkgram_.c: awkgram.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/awkgram.c; then echo $(srcdir)/awkgram.c; else echo awkgram.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
builtin_.c: builtin.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/builtin.c; then echo $(srcdir)/builtin.c; else echo builtin.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
dfa_.c: dfa.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/dfa.c; then echo $(srcdir)/dfa.c; else echo dfa.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
eval_.c: eval.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/eval.c; then echo $(srcdir)/eval.c; else echo eval.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
eval_p_.c: eval_p.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/eval_p.c; then echo $(srcdir)/eval_p.c; else echo eval_p.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
ext_.c: ext.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/ext.c; then echo $(srcdir)/ext.c; else echo ext.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
field_.c: field.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/field.c; then echo $(srcdir)/field.c; else echo field.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
gawkmisc_.c: gawkmisc.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/gawkmisc.c; then echo $(srcdir)/gawkmisc.c; else echo gawkmisc.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
getopt_.c: getopt.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/getopt.c; then echo $(srcdir)/getopt.c; else echo getopt.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
getopt1_.c: getopt1.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/getopt1.c; then echo $(srcdir)/getopt1.c; else echo getopt1.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
io_.c: io.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/io.c; then echo $(srcdir)/io.c; else echo io.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
main_.c: main.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/main.c; then echo $(srcdir)/main.c; else echo main.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
msg_.c: msg.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/msg.c; then echo $(srcdir)/msg.c; else echo msg.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
node_.c: node.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/node.c; then echo $(srcdir)/node.c; else echo node.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
profile_.c: profile.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/profile.c; then echo $(srcdir)/profile.c; else echo profile.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
profile_p_.c: profile_p.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/profile_p.c; then echo $(srcdir)/profile_p.c; else echo profile_p.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
random_.c: random.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/random.c; then echo $(srcdir)/random.c; else echo random.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
re_.c: re.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/re.c; then echo $(srcdir)/re.c; else echo re.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
regex_.c: regex.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/regex.c; then echo $(srcdir)/regex.c; else echo regex.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
replace_.c: replace.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/replace.c; then echo $(srcdir)/replace.c; else echo replace.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
version_.c: version.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/version.c; then echo $(srcdir)/version.c; else echo version.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@
allocate_.c: allocate.c $(ANSI2KNR)
	$(CPP) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) `if test -f $(srcdir)/allocate.c; then echo $(srcdir)/allocate.c; else echo allocate.c; fi` | sed 's/^# \([0-9]\)/#line \1/' | $(ANSI2KNR) > $@ || rm -f $@

array_.$(OBJEXT) awkgram_.$(OBJEXT) builtin_.$(OBJEXT) dfa_.$(OBJEXT) \
eval_.$(OBJEXT) eval_p_.$(OBJEXT) ext_.$(OBJEXT) field_.$(OBJEXT) \
gawkmisc_.$(OBJEXT) getopt_.$(OBJEXT) getopt1_.$(OBJEXT) io_.$(OBJEXT) \
main_.$(OBJEXT) msg_.$(OBJEXT) node_.$(OBJEXT) profile_.$(OBJEXT) \
profile_p_.$(OBJEXT) random_.$(OBJEXT) re_.$(OBJEXT) regex_.$(OBJEXT) \
replace_.$(OBJEXT) allocate_.$(OBJEXT) version_.$(OBJEXT) : $(ANSI2KNR)

.y.c:
	$(SHELL) $(YLWRAP) $< y.tab.c $@ y.tab.h $*.h y.output $*.output -- $(YACCCOMPILE)
uninstall-info-am:

# This directory's subdirectories are mostly independent; you can cd
# into them and run `make' without going through this Makefile.
# To change the values of `make' variables: instead of editing Makefiles,
# (1) if the variable is set in `config.status', edit `config.status'
#     (which will cause the Makefiles to be regenerated when you run `make');
# (2) otherwise, pass the desired values on the `make' command line.
$(RECURSIVE_TARGETS):
	@set fnord $$MAKEFLAGS; amf=$$2; \
	dot_seen=no; \
	target=`echo $@ | sed s/-recursive//`; \
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  echo "Making $$target in $$subdir"; \
	  if test "$$subdir" = "."; then \
	    dot_seen=yes; \
	    local_target="$$target-am"; \
	  else \
	    local_target="$$target"; \
	  fi; \
	  (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) $$local_target) \
	   || case "$$amf" in *=*) exit 1;; *k*) fail=yes;; *) exit 1;; esac; \
	done; \
	if test "$$dot_seen" = "no"; then \
	  $(MAKE) $(AM_MAKEFLAGS) "$$target-am" || exit 1; \
	fi; test -z "$$fail"

mostlyclean-recursive clean-recursive distclean-recursive \
maintainer-clean-recursive:
	@set fnord $$MAKEFLAGS; amf=$$2; \
	dot_seen=no; \
	case "$@" in \
	  distclean-* | maintainer-clean-*) list='$(DIST_SUBDIRS)' ;; \
	  *) list='$(SUBDIRS)' ;; \
	esac; \
	rev=''; for subdir in $$list; do \
	  if test "$$subdir" = "."; then :; else \
	    rev="$$subdir $$rev"; \
	  fi; \
	done; \
	rev="$$rev ."; \
	target=`echo $@ | sed s/-recursive//`; \
	for subdir in $$rev; do \
	  echo "Making $$target in $$subdir"; \
	  if test "$$subdir" = "."; then \
	    local_target="$$target-am"; \
	  else \
	    local_target="$$target"; \
	  fi; \
	  (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) $$local_target) \
	   || case "$$amf" in *=*) exit 1;; *k*) fail=yes;; *) exit 1;; esac; \
	done && test -z "$$fail"
tags-recursive:
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  test "$$subdir" = . || (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) tags); \
	done
ctags-recursive:
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  test "$$subdir" = . || (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) ctags); \
	done

ID: $(HEADERS) $(SOURCES) $(LISP) $(TAGS_FILES)
	list='$(SOURCES) $(HEADERS) $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	mkid -fID $$unique
tags: TAGS

TAGS: tags-recursive $(HEADERS) $(SOURCES) configh.in $(TAGS_DEPENDENCIES) \
		$(TAGS_FILES) $(LISP)
	tags=; \
	here=`pwd`; \
	if ($(ETAGS) --etags-include --version) >/dev/null 2>&1; then \
	  include_option=--etags-include; \
	  empty_fix=.; \
	else \
	  include_option=--include; \
	  empty_fix=; \
	fi; \
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  if test "$$subdir" = .; then :; else \
	    test ! -f $$subdir/TAGS || \
	      tags="$$tags $$include_option=$$here/$$subdir/TAGS"; \
	  fi; \
	done; \
	list='$(SOURCES) $(HEADERS) configh.in $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	if test -z "$(ETAGS_ARGS)$$tags$$unique"; then :; else \
	  test -n "$$unique" || unique=$$empty_fix; \
	  $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	    $$tags $$unique; \
	fi
ctags: CTAGS
CTAGS: ctags-recursive $(HEADERS) $(SOURCES) configh.in $(TAGS_DEPENDENCIES) \
		$(TAGS_FILES) $(LISP)
	tags=; \
	here=`pwd`; \
	list='$(SOURCES) $(HEADERS) configh.in $(LISP) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	test -z "$(CTAGS_ARGS)$$tags$$unique" \
	  || $(CTAGS) $(CTAGSFLAGS) $(AM_CTAGSFLAGS) $(CTAGS_ARGS) \
	     $$tags $$unique

GTAGS:
	here=`$(am__cd) $(top_builddir) && pwd` \
	  && cd $(top_srcdir) \
	  && gtags -i $(GTAGS_ARGS) $$here

distclean-tags:
	-rm -f TAGS ID GTAGS GRTAGS GSYMS GPATH tags

distdir: $(DISTFILES)
	$(am__remove_distdir)
	mkdir $(distdir)
	$(mkdir_p) $(distdir)/. $(distdir)/intl $(distdir)/m4 $(distdir)/po
	@srcdirstrip=`echo "$(srcdir)" | sed 's|.|.|g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's|.|.|g'`; \
	list='$(DISTFILES)'; for file in $$list; do \
	  case $$file in \
	    $(srcdir)/*) file=`echo "$$file" | sed "s|^$$srcdirstrip/||"`;; \
	    $(top_srcdir)/*) file=`echo "$$file" | sed "s|^$$topsrcdirstrip/|$(top_builddir)/|"`;; \
	  esac; \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  dir=`echo "$$file" | sed -e 's,/[^/]*$$,,'`; \
	  if test "$$dir" != "$$file" && test "$$dir" != "."; then \
	    dir="/$$dir"; \
	    $(mkdir_p) "$(distdir)$$dir"; \
	  else \
	    dir=''; \
	  fi; \
	  if test -d $$d/$$file; then \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -pR $(srcdir)/$$file $(distdir)$$dir || exit 1; \
	    fi; \
	    cp -pR $$d/$$file $(distdir)$$dir || exit 1; \
	  else \
	    test -f $(distdir)/$$file \
	    || cp -p $$d/$$file $(distdir)/$$file \
	    || exit 1; \
	  fi; \
	done
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  if test "$$subdir" = .; then :; else \
	    test -d "$(distdir)/$$subdir" \
	    || mkdir "$(distdir)/$$subdir" \
	    || exit 1; \
	    (cd $$subdir && \
	      $(MAKE) $(AM_MAKEFLAGS) \
	        top_distdir="../$(top_distdir)" \
	        distdir="../$(distdir)/$$subdir" \
	        distdir) \
	      || exit 1; \
	  fi; \
	done
	$(MAKE) $(AM_MAKEFLAGS) \
	  top_distdir="$(top_distdir)" distdir="$(distdir)" \
	  dist-hook
	-find $(distdir) -type d ! -perm -777 -exec chmod a+rwx {} \; -o \
	  ! -type d ! -perm -444 -links 1 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -400 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -444 -exec $(SHELL) $(install_sh) -c -m a+r {} {} \; \
	|| chmod -R a+r $(distdir)
dist-gzip: distdir
	$(AMTAR) chof - $(distdir) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	$(am__remove_distdir)
dist-bzip2: distdir
	$(AMTAR) chof - $(distdir) | bzip2 -9 -c >$(distdir).tar.bz2
	$(am__remove_distdir)

dist-tarZ: distdir
	$(AMTAR) chof - $(distdir) | compress -c >$(distdir).tar.Z
	$(am__remove_distdir)

dist-shar: distdir
	shar $(distdir) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).shar.gz
	$(am__remove_distdir)

dist-zip: distdir
	-rm -f $(distdir).zip
	zip -rq $(distdir).zip $(distdir)
	$(am__remove_distdir)

dist dist-all: distdir
	$(AMTAR) chof - $(distdir) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	$(AMTAR) chof - $(distdir) | bzip2 -9 -c >$(distdir).tar.bz2
	$(am__remove_distdir)

# This target untars the dist file and tries a VPATH configuration.  Then
# it guarantees that the distribution is self-contained by making another
# tarfile.
distcheck: dist
	case '$(DIST_ARCHIVES)' in \
	*.tar.gz*) \
	  GZIP=$(GZIP_ENV) gunzip -c $(distdir).tar.gz | $(AMTAR) xf - ;;\
	*.tar.bz2*) \
	  bunzip2 -c $(distdir).tar.bz2 | $(AMTAR) xf - ;;\
	*.tar.Z*) \
	  uncompress -c $(distdir).tar.Z | $(AMTAR) xf - ;;\
	*.shar.gz*) \
	  GZIP=$(GZIP_ENV) gunzip -c $(distdir).shar.gz | unshar ;;\
	*.zip*) \
	  unzip $(distdir).zip ;;\
	esac
	chmod -R a-w $(distdir); chmod a+w $(distdir)
	mkdir $(distdir)/_build
	mkdir $(distdir)/_inst
	chmod a-w $(distdir)
	dc_install_base=`$(am__cd) $(distdir)/_inst && pwd | sed -e 's,^[^:\\/]:[\\/],/,'` \
	  && dc_destdir="$${TMPDIR-/tmp}/am-dc-$$$$/" \
	  && cd $(distdir)/_build \
	  && ../configure --srcdir=.. --prefix="$$dc_install_base" \
	    --with-included-gettext \
	    $(DISTCHECK_CONFIGURE_FLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) dvi \
	  && $(MAKE) $(AM_MAKEFLAGS) check \
	  && $(MAKE) $(AM_MAKEFLAGS) install \
	  && $(MAKE) $(AM_MAKEFLAGS) installcheck \
	  && $(MAKE) $(AM_MAKEFLAGS) uninstall \
	  && $(MAKE) $(AM_MAKEFLAGS) distuninstallcheck_dir="$$dc_install_base" \
	        distuninstallcheck \
	  && chmod -R a-w "$$dc_install_base" \
	  && ({ \
	       (cd ../.. && umask 077 && mkdir "$$dc_destdir") \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" install \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" uninstall \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" \
	            distuninstallcheck_dir="$$dc_destdir" distuninstallcheck; \
	      } || { rm -rf "$$dc_destdir"; exit 1; }) \
	  && rm -rf "$$dc_destdir" \
	  && $(MAKE) $(AM_MAKEFLAGS) dist \
	  && rm -rf $(DIST_ARCHIVES) \
	  && $(MAKE) $(AM_MAKEFLAGS) distcleancheck
	$(am__remove_distdir)
	@(echo "$(distdir) archives ready for distribution: "; \
	  list='$(DIST_ARCHIVES)'; for i in $$list; do echo $$i; done) | \
	  sed -e '1{h;s/./=/g;p;x;}' -e '$${p;x;}'
distuninstallcheck:
	@cd $(distuninstallcheck_dir) \
	&& test `$(distuninstallcheck_listfiles) | wc -l` -le 1 \
	   || { echo "ERROR: files left after uninstall:" ; \
	        if test -n "$(DESTDIR)"; then \
	          echo "  (check DESTDIR support)"; \
	        fi ; \
	        $(distuninstallcheck_listfiles) ; \
	        exit 1; } >&2
distcleancheck: distclean
	@if test '$(srcdir)' = . ; then \
	  echo "ERROR: distcleancheck can only run from a VPATH build" ; \
	  exit 1 ; \
	fi
	@test `$(distcleancheck_listfiles) | wc -l` -eq 0 \
	  || { echo "ERROR: files left in build directory after distclean:" ; \
	       $(distcleancheck_listfiles) ; \
	       exit 1; } >&2
check-am: all-am
	$(MAKE) $(AM_MAKEFLAGS) check-local
check: check-recursive
all-am: Makefile $(ANSI2KNR) $(PROGRAMS) config.h
installdirs: installdirs-recursive
installdirs-am:
	for dir in "$(DESTDIR)$(bindir)"; do \
	  test -z "$$dir" || $(mkdir_p) "$$dir"; \
	done
install: install-recursive
install-exec: install-exec-recursive
install-data: install-data-recursive
uninstall: uninstall-recursive

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-recursive
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	  install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	  `test -z '$(STRIP)' || \
	    echo "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'"` install
mostlyclean-generic:

clean-generic:
	-test -z "$(CLEANFILES)" || rm -f $(CLEANFILES)

distclean-generic:
	-rm -f $(CONFIG_CLEAN_FILES)

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
	-rm -f awkgram.c
clean: clean-recursive

clean-am: clean-binPROGRAMS clean-generic clean-krextra mostlyclean-am

distclean: distclean-recursive
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -rf ./$(DEPDIR)
	-rm -f Makefile
distclean-am: clean-am distclean-compile distclean-generic \
	distclean-hdr distclean-tags

dvi: dvi-recursive

dvi-am:

html: html-recursive

info: info-recursive

info-am:

install-data-am:

install-exec-am: install-binPROGRAMS
	@$(NORMAL_INSTALL)
	$(MAKE) $(AM_MAKEFLAGS) install-exec-hook

install-info: install-info-recursive

install-man:

installcheck-am:

maintainer-clean: maintainer-clean-recursive
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -rf $(top_srcdir)/autom4te.cache
	-rm -rf ./$(DEPDIR)
	-rm -f Makefile
maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-recursive

mostlyclean-am: mostlyclean-compile mostlyclean-generic mostlyclean-kr

pdf: pdf-recursive

pdf-am:

ps: ps-recursive

ps-am:

uninstall-am: uninstall-binPROGRAMS uninstall-info-am

uninstall-info: uninstall-info-recursive

.PHONY: $(RECURSIVE_TARGETS) CTAGS GTAGS all all-am am--refresh check \
	check-am check-local clean clean-binPROGRAMS clean-generic \
	clean-krextra clean-recursive ctags ctags-recursive dist \
	dist-all dist-bzip2 dist-gzip dist-shar dist-tarZ dist-zip \
	distcheck distclean distclean-compile distclean-generic \
	distclean-hdr distclean-recursive distclean-tags \
	distcleancheck distdir distuninstallcheck dvi dvi-am html \
	html-am info info-am install install-am install-binPROGRAMS \
	install-data install-data-am install-exec install-exec-am \
	install-info install-info-am install-man install-strip \
	installcheck installcheck-am installdirs installdirs-am \
	maintainer-clean maintainer-clean-generic \
	maintainer-clean-recursive mostlyclean mostlyclean-compile \
	mostlyclean-generic mostlyclean-kr mostlyclean-recursive pdf \
	pdf-am ps ps-am tags tags-recursive uninstall uninstall-am \
	uninstall-binPROGRAMS uninstall-info-am

.c.i:
	$(COMPILE) -E $< > $@

# First, add a link from gawk to gawk-X.Y.Z.
# Same for pgawk.
#
# For GNU systems where gawk is awk, add a link to awk.
# (This is done universally, which may not always be right, but
# there's no easy way to distinguish GNU from non-GNU systems.)
install-exec-hook:
	(cd $(DESTDIR)$(bindir); \
	$(LN) gawk$(EXEEXT) gawk-$(VERSION)$(EXEEXT) 2>/dev/null ; \
	$(LN) pgawk$(EXEEXT) pgawk-$(VERSION)$(EXEEXT) 2>/dev/null ; \
	if [ ! -f awk$(EXEEXT) ]; \
	then	$(LN_S) gawk$(EXEEXT) awk$(EXEEXT); \
	fi; exit 0)

# Undo the above when uninstalling
uninstall-links:
	(cd $(DESTDIR)$(bindir); \
	if [ -f awk$(EXEEXT) ] && cmp awk$(EXEEXT) gawk$(EXEEXT) > /dev/null; then rm -f awk$(EXEEXT); fi ; \
	rm -f gawk-$(VERSION)$(EXEEXT) pgawk-$(VERSION)$(EXEEXT); exit 0)

uninstall-recursive: uninstall-links

# force there to be a gawk executable before running tests
check-local: gawk$(EXEEXT) pgawk$(EXEEXT)

# A little extra clean up when making distributions.
# FIXME: most of this rule should go away upon switching to libtool.
dist-hook:
	cd $(distdir)/extension ; rm -f *.o *.so

# Special rules for individual files
awkgram.c: awkgram.y
	$(YACC) $(AM_YFLAGS) $(YFLAGS) $< && sed -f $(srcdir)/bisonfix.sed < y.tab.c > $*.c && $(RM) y.tab.c
	if test -f y.tab.h; then \
	if cmp -s y.tab.h $*.h; then rm -f y.tab.h; else mv y.tab.h $*.h; fi; \
	else :; fi

# This is for my development & testing.
efence: gawk
	$(CC) $(LDFLAGS) -o gawk $$(ls *.o | grep -v '_p.o$$') $(LIBS) -lefence

diffout:
	@$(MAKE) -C test $@
# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
