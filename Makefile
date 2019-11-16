CFLAGS += $(shell pkg-config --cflags --libs libbsd-overlay) -D_GNU_SOURCE

patch: backupfile.c inp.c mkpath.c patch.c pch.c util.c

install: all
	install -d $(DESTDIR)/usr/bin
	install patch $(DESTDIR)/usr/bin
	install -d $(DESTDIR)/usr/share/man/man1
	install -m644 patch.1 $(DESTDIR)/usr/share/man/man1
