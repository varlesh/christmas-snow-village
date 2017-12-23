# GNU make is required to run this file. To install on *BSD, run:
#   gmake PREFIX=/usr/local install

PREFIX ?= /usr
IGNORE ?=

all:

install:
	mkdir -p $(DESTDIR)/etc/mpv
	mkdir -p $(DESTDIR)$(PREFIX)/share/christmas-snow-village
	mkdir -p $(DESTDIR)$(PREFIX)/share/applications
	mkdir -p $(DESTDIR)$(PREFIX)/share/icons/hicolor/16x16/apps
	mkdir -p $(DESTDIR)$(PREFIX)/share/icons/hicolor/22x22/apps
	mkdir -p $(DESTDIR)$(PREFIX)/share/icons/hicolor/24x24/apps
	mkdir -p $(DESTDIR)$(PREFIX)/share/icons/hicolor/32x32/apps
	mkdir -p $(DESTDIR)$(PREFIX)/share/icons/hicolor/48x48/apps
	mkdir -p $(DESTDIR)$(PREFIX)/share/icons/hicolor/64x64/apps
	cp data/mpv.conf $(DESTDIR)/etc/mpv/mpv.conf
	cp data/christmas-snow-village.webm $(DESTDIR)$(PREFIX)/share/christmas-snow-village/christmas-snow-village.webm
	cp data/christmas-snow-village.desktop $(DESTDIR)$(PREFIX)/share/applications/christmas-snow-village.desktop
	cp data/icons/christmas-tree16x16.svg $(DESTDIR)$(PREFIX)/share/icons/hicolor/16x16/apps/christmas-tree.svg
	cp data/icons/christmas-tree22x22.svg $(DESTDIR)$(PREFIX)/share/icons/hicolor/22x22/apps/christmas-tree.svg
	cp data/icons/christmas-tree24x24.svg $(DESTDIR)$(PREFIX)/share/icons/hicolor/24x24/apps/christmas-tree.svg
	cp data/icons/christmas-tree32x32.svg $(DESTDIR)$(PREFIX)/share/icons/hicolor/32x32/apps/christmas-tree.svg
	cp data/icons/christmas-tree48x48.svg $(DESTDIR)$(PREFIX)/share/icons/hicolor/48x48/apps/christmas-tree.svg
	cp data/icons/christmas-tree64x64.svg $(DESTDIR)$(PREFIX)/share/icons/hicolor/64x64/apps/christmas-tree.svg

uninstall:
	-rm -rf $(DESTDIR)$(PREFIX)/share/christmas-snow-village
	-rm $(DESTDIR)$(PREFIX)/share/applications/christmas-snow-village.desktop
	-rm $(DESTDIR)/etc/mpv/mpv.conf
	-rm $(DESTDIR)$(PREFIX)/share/icons/hicolor/16x16/apps/christmas-tree.svg
	-rm $(DESTDIR)$(PREFIX)/share/icons/hicolor/22x22/apps/christmas-tree.svg
	-rm $(DESTDIR)$(PREFIX)/share/icons/hicolor/24x24/apps/christmas-tree.svg
	-rm $(DESTDIR)$(PREFIX)/share/icons/hicolor/32x32/apps/christmas-tree.svg
	-rm $(DESTDIR)$(PREFIX)/share/icons/hicolor/48x48/apps/christmas-tree.svg
	-rm $(DESTDIR)$(PREFIX)/share/icons/hicolor/64x64/apps/christmas-tree.svg


.PHONY: all install uninstall
