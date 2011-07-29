PREFIX=${CURDIR}/debian/openapp-mysql-installer
PREFIX2=${CURDIR}/debian/openapp-mysql

install:
# bin
	mkdir -p $(PREFIX)/usr/bin
	cp openapp-mysql-passwd $(PREFIX)/usr/bin

#man
	mkdir -p $(PREFIX)/usr/share/man/man1
	cp debian/openapp-mysql-passwd.1 $(PREFIX)/usr/share/man/man1

#openapp-backupmodule
	mkdir -p $(PREFIX2)/etc/openapp-backup/scripts.d/
	cp openapp-backup/* $(PREFIX2)/etc/openapp-backup/scripts.d/
	chmod +x $(PREFIX2)/etc/openapp-backup/scripts.d/*

uninstall:
# bin
	rm -rf $(PREFIX)/usr/bin/openapp-mysql-passwd
	rm -rf $(PREFIX)/usr/share/man/man1/openapp-mysql-passwd.1.gz

clean:
	-echo "NOP"

