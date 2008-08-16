dnl Process this file with autoconf to produce a configure script.

AC_INIT([lwes-php], [0.0.1], [lwes-devel@lists.sourceforge.net])
AM_INIT_AUTOMAKE

AC_CANONICAL_HOST

MAJOR_VERSION=`echo "[$]PACKAGE_VERSION" |
               perl -ne 'm%^(\d+)\.% && print "[$]1"'`
MINOR_VERSION=`echo "[$]PACKAGE_VERSION" |
               perl -ne 'm%^\d+\.(\d+)% && print "[$]1"'`
RELEASE_NUMBER=`echo "[$]PACKAGE_VERSION" |
                perl -ne 'm%^\d+\.\d+\.(\d+)% && print "[$]1"'`
MAJOR_VERSION_UNDERLINE=`echo "[$]MAJOR_VERSION" | perl -pe 'chomp; s/\W/_/g;'`
PACKAGE_UNDERLINE=`echo "[$]PACKAGE_NAME" | perl -pe 'chomp; s/\W/_/g;'`
PACKAGEPACKED=`echo "[$]PACKAGE_NAME" | perl -pe 'chomp; s/\W//g;'`
VERSION_UNDERLINE=`echo "[$]PACKAGE_VERSION" | perl -pe 'chomp; s/\W/_/g;'`

AC_SUBST(MAJOR_VERSION)
AC_SUBST(MINOR_VERSION)
AC_SUBST(RELEASE_NUMBER)
AC_SUBST(SHORT_DESC)

AC_SUBST(MAJOR_VERSION_UNDERLINE)
AC_SUBST(PACKAGE_UNDERLINE)
AC_SUBST(PACKAGEPACKED)
AC_SUBST(VERSION_UNDERLINE)

dnl -- set maintainer mode
AM_MAINTAINER_MODE
AC_SUBST(USE_MAINTAINER_MODE)

dnl -- make sure we have a C compiler
AC_PROG_CC

dnl -- check for programs
AC_PATH_PROG([PHPCONFIG], [php-config])

dnl -- check for library
PKG_CHECK_MODULES(DEPS, lwes-0 >= 0.22.1)
AC_SUBST(DEPS_CFLAGS)
AC_SUBST(DEPS_LIBS)

AC_CONFIG_FILES([Makefile])

AC_OUTPUT

