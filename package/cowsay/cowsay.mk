################################################################################
#
# cowsay
#
################################################################################

COWSAY_VERSION = b67eda47925e8dee3a3fd4b513127a3f4ae15341
COWSAY_SITE = $(call github,schacon,cowsay,$(COWSAY_VERSION))
COWSAY_LICENSE = Artistic or GPLv1+
COWSAY_LICENSE_FILES = LICENSE

# The cowsay installer is an interactive shell script.
define COWSAY_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 755 $(@D)/cowsay $(TARGET_DIR)/usr/bin/cowsay
	$(SED) 's,%BANGPERL%,!/usr/bin/perl,' $(TARGET_DIR)/usr/bin/cowsay
	$(SED) 's,%PREFIX%,/usr,' $(TARGET_DIR)/usr/bin/cowsay
	chmod a+x $(TARGET_DIR)/usr/bin/cowsay
	ln -sf cowsay $(TARGET_DIR)/usr/bin/cowthink
	mkdir -p $(TARGET_DIR)/usr/share/cows
	cp -dpf $(@D)/cows/*.cow $(TARGET_DIR)/usr/share/cows
endef

$(eval $(generic-package))
