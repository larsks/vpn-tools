prefix = /usr/local
bindir = $(prefix)/bin

SCRIPTS = \
	vpn-up

INSTALL = install

all:

install: all
	$(INSTALL) -m 755 -d $(bindir)
	for script in $(SCRIPTS); do \
		$(INSTALL) -m 755 $$script $(bindir)/; \
	done
