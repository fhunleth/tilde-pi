################################################################################
#
# inetutils
#
################################################################################

INETUTILS_VERSION = 1.9.2
INETUTILS_SITE = http://ftp.gnu.org/gnu/inetutils/
INETUTILS_LICENSE = LGPLv3+
INETUTILS_LICENSE_FILES = COPYING
INETUTILS_DEPENDENCIES += ncurses # talk

# only build talkd and talk
INETUTILS_CONF_OPTS += --disable-ftpd --disable-inetd --disable-rexecd \
		       --disable-rlogind --disable-rshd --disable-syslogd \
		       --disable-telnetd --disable-tftpd --disable-uucpd \
		       --disable-ftp --disable-dnsdomainname --disable-hostname \
		       --disable-ping --disable-ping6 --disable-rcp --disable-rexec \
		       --disable-rlogin --disable-rsh --disable-logger --disable-telnet \
		       --disable-tftp --disable-whois --disable-ifconfig \
		       --disable-traceroute

$(eval $(autotools-package))
