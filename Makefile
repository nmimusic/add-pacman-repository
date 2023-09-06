PREFIX = /usr/local

all:
	@printf "Run 'make install' to install add-pacman-repository.\n"

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(PREFIX)/share/licenses/add-pacman-repository
	@cp -p add-pacman-repository $(DESTDIR)$(PREFIX)/bin/add-pacman-repository
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/add-pacman-repository
	@cp -p LICENSE $(DESTDIR)$(PREFIX)/share/licenses/add-pacman-repository

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/add-pacman-repository
