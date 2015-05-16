#############################################################
#
# fwup
#
#############################################################

FWUP_VERSION = 34cbe0a06c3fe5ca05be0b9b83995f66b5c9530d
FWUP_SITE = $(call github,fhunleth,fwup,$(FWUP_VERSION))
FWUP_LICENSE = Apache-2.0
FWUP_LICENSE_FILES = COPYING
FWUP_AUTORECONF = YES
FWUP_DEPENDENCIES = libconfuse libarchive libsodium

$(eval $(autotools-package))
$(eval $(host-autotools-package))
