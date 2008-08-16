
mysourcefiles = lwes_wrap.c

lib_LIBRARIES = lwes.so

lwes_so_SOURCES = ${mysourcefiles}
lwes_so_LIBADD = -llwes
lwes_so_LDFLAGS = -version-info @MAJOR_VERSION@:@MINOR_VERSION@:0
lwes_so_CFLAGS = `php-config --includes` -fpic `pkg-config --cflags lwes-0`


