all: install

install:
	mkdir -p $(DESTDIR)/usr/share/icons/eta-cursor
	@cp -a cursors $(DESTDIR)/usr/share/icons/eta-cursor/
	@cp -a index.theme $(DESTDIR)/usr/share/icons/eta-cursor/

	mkdir -p $(DESTDIR)/etc/X11/cursors
	@cp -a eta-cursor.theme $(DESTDIR)/etc/X11/cursors/

uninstall:
	@rm -fr $(DESTDIR)/usr/share/icons/eta-cursor
	@rm -fr $(DESTDIR)/etc/X11/cursors/eta-cursor.theme

.PHONY: install uninstall
