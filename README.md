This is the telnet-sh, a telnet client with built-in automatization, 

The original source can always be found at:<br>
    https://github.com/jordi-pujol/telnet-sh

telnet-sh is a tiny telnet client written in Bash, suitable to be 
installed on minimal computers, very useful on OpenWRT routers that 
don't have a telnet program.

It does not implement the complete Telnet protocol, for example the 
OPEN command is not available, so we must specify the host as an option 
in the command line.

Also have packaged it for Debian, it's interesting for the reduced size 
of this program and the automatization posibilities.

This program is licensed under the terms of the GNU General Public 
License (GPL), version 3 or later, as published by the Free Software 
Foundation:

On Debian systems, the complete text of the GNU General Public License can
be found in '/usr/share/common-licenses/GPL'.

*****************************************************
Examples:

Open a telnet session on host 192.168.1.1 and execute the script file 
in batch mode, also write a bash trace in directory /tmp:

export DEBUG=y; telnet -b -l tuser -p tpass \ <br>
-c scripts/script-observa.txt 192.168.1.1

Following is a sample script to reboot a Telecom Observa router:

expect 'username:' "$TUSER\n"<br>
expect 'password:' "$TPASS\n"<br>
expect 'TBS>>' 'reboot\n'<br>
expect 'TBS>>' 'exit\n'<br>
expect 'Are you sure to logout? Y/N[N]:' Y

Open a pop3 session on a mail server:

telnet -l tuser -p tpass  \ <br>
-c scripts/script-pop3.txt mail.host.net pop3

Sample script to init a pop3 session and after give control to the 
user:

expect '+OK POP3 PROXY server ready\n' "user $TUSER\n"<br>
expect '+OK Password required\n' "pass $TPASS\n"<br>
interactive

*****************************************************
Debian repository:

Have stored the corresponding packages in:

deb [arch=amd64,i386] http://livenet.ddns.net/ftp/debian/ sid main contrib non-free

deb-src http://livenet.ddns.net/ftp/debian/ sid main contrib non-free

deb [arch=amd64,i386] http://livenet.ddns.net/ftp/debian/ experimental main contrib non-free

deb-src http://livenet.ddns.net/ftp/debian/ experimental main contrib non-free
