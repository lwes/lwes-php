dnl $Id: php4.cxx,v 1.10 2004/12/01 00:50:06 marcelomatus Exp $
dnl ***********************************************************************
dnl ** THIS config.m4 is provided for PHPIZE and PHP's consumption NOT
dnl ** for any part of the rest of the lwes build system
dnl ***********************************************************************

PHP_ARG_ENABLE(lwes, whether to enable lwes support,
[  --enable-lwes             Enable lwes support])

if test "$PHP_LWES" != "no"; then

  PHP_SUBST(LWES_SHARED_LIBADD)

  AC_DEFINE(HAVE_LWES, 1, [ ])
dnl  AC_DEFINE_UNQUOTED(PHP_LWES_DIR, "$LWES_DIR", [ ])
dnl  PHP_EXTENSION(lwes, $ext_shared)

  PHP_NEW_EXTENSION(lwes, lwes_wrap.c, $ext_shared)
fi
