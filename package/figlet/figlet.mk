################################################################################
#
# figlet
#
################################################################################

FIGLET_VERSION = 2.2.5
FIGLET_SITE = ftp://ftp.figlet.org/pub/figlet/program/unix
FIGLET_LICENSE = BSD-3c
FIGLET_LICENSE_FILES = LICENSE

define FIGLET_BUILD_CMDS
	# Figlet hardcodes paths in the binaries, so point prefix to target paths
	$(MAKE) -C $(@D) $(TARGET_CONFIGURE_OPTS) LD=$(TARGET_CC) prefix=/usr
endef

define FIGLET_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) $(TARGET_CONFIGURE_OPTS) prefix=$(TARGET_DIR)/usr install
endef

$(eval $(generic-package))
