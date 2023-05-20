PREFIX ?= /usr
DOCDIR ?= $(PREFIX)/share/doc/fff

all:
	@echo Run \'make install\' to install fff.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(DOCDIR)
	@cp -p fff $(DESTDIR)$(PREFIX)/bin/fff
	@cp -p README.md $(DESTDIR)$(DOCDIR)
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/fff

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/fff
	@rm -rf $(DESTDIR)$(DOCDIR)
