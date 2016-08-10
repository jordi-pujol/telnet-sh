# telnet-sh
A tiny telnet client that provides automatization

The original source can always be found at:
    https://github.com/jordi-pujol/telnet-sh

telnet-sh is a tiny telnet client written in Bash, suitable to be 
installed on minimal computers or routers that don't have a telnet 
program, like the OpenWRT ones.

It's very useful but does not implement the complete Telnet protocol, for
example the OPEN command is not available, so we must specify the host as an
option in the command line.

Also have packaged it for Debian, it's interesting for the reduced size 
of this program and the automatization posibilities.

This program is licensed under the terms of the GNU General Public 
License (GPL), version 3 or later, as published by the Free Software 
Foundation:

On Debian systems, the complete text of the GNU General Public License can
be found in `/usr/share/common-licenses/GPL'.

*****************************************************
Debian repository:

Have stored the corresponding packages in:

deb [arch=amd64,i386] http://livenet.ddns.net/ftp/debian/ sid main contrib non-free

deb-src http://livenet.ddns.net/ftp/debian/ sid main contrib non-free

deb [arch=amd64,i386] http://livenet.ddns.net/ftp/debian/ experimental main contrib non-free

deb-src http://livenet.ddns.net/ftp/debian/ experimental main contrib non-free
