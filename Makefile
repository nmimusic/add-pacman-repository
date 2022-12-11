PREFIX = /usr

all:
	@printf "Run 'make install' to install UniFetch.\n"

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p add-pacman-repository $(DESTDIR)$(PREFIX)/bin/add-pacman-repository
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/add-pacman-repository

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/add-pacman-repository
