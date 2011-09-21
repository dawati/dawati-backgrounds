VERSION=0.7

install:
	install -d ${DESTDIR}/usr/share/plymouth
	install -d ${DESTDIR}/usr/share/backgrounds/images
	install -d ${DESTDIR}/usr/share/backgrounds/gnome
	
	install -m 644 splash.png splash-1024x600.png splash-1024x768.png splash-1280x720.png splash-1280x800.png splash-1366x768.png splash-1600x900.png splash-1920x1080.png shutdown-1024x600.png shutdown-1024x768.png shutdown-1280x720.png shutdown-1280x800.png shutdown-1366x768.png shutdown-1600x900.png shutdown-1920x1080.png ${DESTDIR}/usr/share/plymouth
	install -m 644 meego-background.png  ${DESTDIR}/usr/share/backgrounds/images
	install -m 644 myzone-default-background.png ${DESTDIR}/usr/share/backgrounds/images
	install -m 644 linus.jpg paper.png wood.png ${DESTDIR}/usr/share/backgrounds/gnome


dist:
	git archive --format=tar --prefix=netbook-backgrounds-$(VERSION)/ $(VERSION) | \
			        bzip2  > netbook-backgrounds-$(VERSION).tar.bz2
