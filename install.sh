#!/bin/sh

pathwd="$(dirname "${0}")"
cp "${pathwd}/bin/telnet-sh" /usr/bin/
gzip -c "${pathwd}/man/telnet-sh.1" > /usr/share/man/man1/telnet-sh.1.gz
if [ -n "$(which update-alternatives)" ]; then
	update-alternatives --install /usr/bin/telnet telnet /usr/bin/telnet-sh 50 \
		--slave /usr/share/man/man1/telnet.1.gz telnet.1.gz \
		/usr/share/man/man1/telnet-sh.1.gz
else
	if [ ! -e /usr/bin/telnet ]; then
		cd /usr/bin
		ln -s telnet-sh /usr/bin/telnet
	fi
	if [ ! -e /usr/share/man/man1/telnet.1.gz ]; then
		cd /usr/share/man/man1
		ln -s telnet-sh.1.gz /usr/share/man/man1/telnet.1.gz
	fi
fi
:
