################################################################################
#
# OpENer
#
################################################################################

OPENER_VERSION = v2.4.18
OPENER_SOURCE = v2.4.18.tar.gz
OPENER_SITE = https://github.com/slayerserg/opener/archive/refs/tags
OPENER_INSTALL_STAGING = NO
OPENER_INSTALL_TARGET = YES
OPENER_CONF_OPTS = -DOpENer_PLATFORM:STRING="POSIX" -DBUILD_SHARED_LIBS:BOOL=OFF ./OpENer/source
OPENER_DEPENDENCIES = libcap
#OPENER_SUBDIR = OpENer/source

#-DOpENer_PLATFORM:STRING="POSIX" -DCMAKE_BUILD_TYPE:STRING="" -DBUILD_SHARED_LIBS:BOOL=OFF ./source

define OPENER_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

$(eval $(cmake-package))
