PREFIX=${CURDIR}/debian/openapp-mysql

install:
# bin
	mkdir -p $(PREFIX)/usr/bin
	cp openapp-mysql-passwd $(PREFIX)/usr/bin

#man
	mkdir -p $(PREFIX)/usr/share/man/man1
	cp debian/openapp-mysql-passwd.1 $(PREFIX)/usr/share/man/man1

uninstall:
# bin
	rm -rf $(PREFIX)/usr/bin/openapp-mysql-passwd
	rm -rf $(PREFIX)/usr/share/man/man1/openapp-mysql-passwd.1.gz

clean:
	-echo "NOP"

 

