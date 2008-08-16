
mysourcefiles = lwes_wrap.c

lib_LTLIBRARIES = liblwes.la

liblwes_la_SOURCES = ${mysourcefiles}
liblwes_la_LIBADD = -llwes
liblwes_la_LDFLAGS = -version-info @MAJOR_VERSION@:@MINOR_VERSION@:0
liblwes_la_CFLAGS = `php-config --includes` -fpic `pkg-config --cflags lwes-0`


