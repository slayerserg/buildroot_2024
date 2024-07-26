################################################################################
#
# Simple server
#
################################################################################

SIMPLE_SERVER_VERSION = v1.1
SIMPLE_SERVER_SOURCE = v1.1.tar.gz
SIMPLE_SERVER_SITE = https://github.com/slayerserg/simple-socket-server/archive/refs/tags
SIMPLE_SERVER_INSTALL_STAGING = NO
SIMPLE_SERVER_INSTALL_TARGET = YES

define SIMPLE_SERVER_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define SIMPLE_SERVER_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/select-server $(TARGET_DIR)/usr/bin
    $(INSTALL) -D -m 0755 $(@D)/poll-server $(TARGET_DIR)/usr/bin
    $(INSTALL) -D -m 0755 $(@D)/client $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
